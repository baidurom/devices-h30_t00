.class public Lcom/android/hwcamera/settings/MenuMutexConfigs;
.super Ljava/lang/Object;
.source "MenuMutexConfigs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    }
.end annotation


# static fields
.field private static final MENU_MUTEX_CONFIGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 18
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    .line 23
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v9, singleMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_panorama_direction_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v1, beautyMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_target_tracking_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    invoke-direct/range {v15 .. v16}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v14, "pref_camera_panorama_direction_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v14, "pref_camera_scenemode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v14, "pref_camera_burst_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v10, smartMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_iso_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v14, "pref_camera_whitebalance_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v14, "pref_camera_exposure_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "0"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v14, "pref_camera_saturation_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v14, "pref_camera_brightness_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v14, "pref_camera_contrast_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v14, "pref_camera_imagejust_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v14, "pref_camera_panorama_direction_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v14, "pref_camera_scenemode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, hdrMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_flashmode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v14, "pref_camera_burst_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v3, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    const-string v14, "pref_camera_bestphoto_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v5, meterMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_target_tracking_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    invoke-direct/range {v15 .. v16}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v14, "pref_camera_smile_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v14, "pref_camera_touch_snapshot_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v14, "pref_camera_counter_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v13, targetTrackMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_smile_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v14, "pref_camera_touch_snapshot_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    const-string v15, "pref_camera_target_tracking_key"

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v11, smile2touchCaptureMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_target_tracking_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    const-string v15, "pref_camera_smile_key"

    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    const-string v15, "pref_camera_touch_snapshot_key"

    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v6, panoramaMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_target_tracking_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v14, "pref_camera_smile_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v14, "pref_camera_touch_snapshot_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v14, "pref_camera_picturesize_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "3264x2448"

    invoke-direct/range {v15 .. v16}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v14, "pref_camera_counter_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v14, "pref_camera_iso_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v14, "pref_camera_whitebalance_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v14, "pref_camera_exposure_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "0"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v14, "pref_camera_saturation_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v14, "pref_camera_brightness_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v14, "pref_camera_contrast_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "middle"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v14, "pref_camera_imagejust_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v14, "pref_camera_sound_snapshot_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v14, "pref_camera_flashmode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v14, "pref_camera_bestphoto_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v14, "pref_camera_burst_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, colorEffectMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_whitebalance_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v14, "pref_camera_panorama_direction_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v14, "pref_camera_scenemode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v0, autoramaMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_scenemode_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "auto"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    const-string v14, "pref_camera_picturesize_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v4, mavMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v12, soudPicturesMutexConfigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_sound_snapshot_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v14, "pref_camera_bestphoto_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v14, "pref_camera_panorama_direction_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v14, "pref_camera_burst_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, "off"

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    sget-object v15, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v15}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v7, scenemodeMutexConfig_auto:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_whitebalance_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v14, "pref_camera_iso_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v14, "pref_camera_imagejust_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    const-string v15, "scenemode-auto"

    invoke-interface {v14, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v8, scenemodeMutexConfig_others:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v14, "pref_camera_whitebalance_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v14, "pref_camera_iso_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v14, "pref_camera_imagejust_key"

    new-instance v15, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v14, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    const-string v15, "scenemode-others"

    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method public static getMutexConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "shotMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/android/hwcamera/settings/MenuMutexConfigs;->MENU_MUTEX_CONFIGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
