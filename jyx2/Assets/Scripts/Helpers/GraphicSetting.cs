﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.SceneManagement;

//新增项，必须是属性，且在默认构造函数里初始化
public class GraphicSetting : MonoBehaviour
{
    //是否开启全局雾效（顶点雾），默认开启
    public int HasFog { get; set; }
    //是否开启后处理（调色以及一些临时效果），默认开启
    public int HasPost { get; set; }
    //是否开启水面法线，默认开启，暂未实现
    public int HasWaterNormal { get; set; }

    //阴影质量
    public ShadowQuality ShadowQuality { get; set; }
    //最大帧率，默认60
    public MaxFpsEnum MaxFps { get; set; }
    //图形质量级别，默认高
    public QualityLevelEnum QualityLevel { get; set; }
    //Shader LOD级别，默认为高（效果全开）
    public ShaderLodLevelEnum ShaderLodLevel { get; set; }
    //阴影显示层级，默认只显示自己team，暂未实现
    public ShadowShowLevelEnum ShadowShowLevel { get; set; }

    private static GraphicSetting _globalSetting;
    public static GraphicSetting GlobalSetting
    {
        get
        {
            if (_globalSetting == null)
            {
                _globalSetting = new GraphicSetting();
                _globalSetting.Load();
            }
            return _globalSetting;
        }
    }

    public GraphicSetting()
    {
        HasFog = 1;
        HasPost = 1;
        HasWaterNormal = 1;
        MaxFps = MaxFpsEnum.Fps200;
        QualityLevel = QualityLevelEnum.High;
        ShaderLodLevel = ShaderLodLevelEnum.High;
        ShadowQuality = ShadowQuality.All;
        ShadowShowLevel = ShadowShowLevelEnum.Team;
    }

    public void Save()
    {
        var type = this.GetType();
        var className = type.FullName;
        var infos = type.GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.DeclaredOnly);
        foreach (var info in infos)
        {
            var propName = info.Name;
            var prefsKey = $"{className}-{propName}";
            var intValue = (int)info.GetValue(this);

            PlayerPrefs.SetInt(prefsKey, intValue);
        }
        PlayerPrefs.Save();
    }
    
    public void Load()
    {
        var type = this.GetType();
        var className = type.FullName;
        var infos = type.GetProperties();
        foreach (var info in infos)
        {
            var propName = info.Name;
            var prefsKey = $"{className}-{propName}";
            if (PlayerPrefs.HasKey(prefsKey))
            {
                var value = PlayerPrefs.GetInt(prefsKey);
                info.SetValue(this, value);
            }
        }
    }
    
    public void Execute()
    {
        /*RenderSettings.fog = HasFog == 1;
        var post = Camera.main.GetComponent<PostProcessLayer>();
        if (post != null) post.enabled = HasPost == 1;

        Application.targetFrameRate = 0; //(int) MaxFps;
        QualitySettings.SetQualityLevel((int)QualityLevel, true);
        Shader.globalMaximumLOD = (int)ShaderLodLevel;
        QualitySettings.shadows = ShadowQuality;

        ExecuteWaterNormal();
        ExecuteShadowShowLevel();*/
    }

    public void ExecuteShadowShowLevel()
    {
        var list = GameObject.FindGameObjectsWithTag("MyTeam");
        foreach (var obj in list)
        {
            var render = obj.GetComponent<SkinnedMeshRenderer>();
            if (render == null) continue;
            render.shadowCastingMode = ShadowCastingMode.On;
        }
        list = GameObject.FindGameObjectsWithTag("Player");
        foreach (var obj in list)
        {
            var render = obj.GetComponent<SkinnedMeshRenderer>();
            if (render == null) continue;
            render.shadowCastingMode = ShadowCastingMode.On;
        }

        list = GameObject.FindGameObjectsWithTag("NPC");
        foreach (var obj in list)
        {
            var render = obj.GetComponent<SkinnedMeshRenderer>();
            if (render == null) continue;
            if (ShadowShowLevel == ShadowShowLevelEnum.All)
                render.shadowCastingMode = ShadowCastingMode.On;
            else
                //render.shadowCastingMode = ShadowCastingMode.Off;
                render.shadowCastingMode = ShadowCastingMode.On;
        }
    }

    public void ExecuteWaterNormal()
    {
        var list = GameObject.FindGameObjectsWithTag("StylizedWater");
        foreach (var water in list)
        {
            var script = water.GetComponent<StylizedWater.StylizedWater>();
            if (script == null) continue;

            var meshRenderer = water.GetComponent<MeshRenderer>();
            if (meshRenderer == null) continue;

            var material = meshRenderer.sharedMaterial;
            if (HasWaterNormal == 1)
            {
                material.EnableKeyword("_NORMAL_MAP_ON");
            }
            else
            {
                material.DisableKeyword("_NORMAL_MAP_ON");
            }
        }
    }
}

public enum MaxFpsEnum
{
    Fps30 = 30,
    Fps60 = 60,
    Fps120 = 120,
    Fps200 = 200
}

public enum QualityLevelEnum
{
    Low = 0,
    Mid,
    High,
    Extreme
}

public enum ShaderLodLevelEnum
{
    Low = 700,
    Mid = 900,
    High = 1000
}

public enum ShadowShowLevelEnum
{
    Team,
    All
}
