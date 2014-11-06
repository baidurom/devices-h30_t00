.class public Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;
.super Ljava/lang/Object;
.source "FeatureShotModeFactory.java"


# static fields
.field private static final SHOTMODE_CLASS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/hwcamera/feature/shot/IFeatureShotMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static SHOTMODE_OBJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/feature/shot/IFeatureShotMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_OBJ:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/SingleModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/BurstModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/SmartModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/HDRModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/BeautyModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/EffectModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/AutoramaModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/VoicePhotoModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/MeterModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/hwcamera/feature/shot/MavModeFeature;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFeatureShotModeInstance(Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    .locals 1
    .parameter "featureCamera"

    .prologue
    .line 59
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->getFeatureShotModeInstance(Ljava/lang/String;Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    return-object v0
.end method

.method public static getFeatureShotModeInstance(Ljava/lang/String;Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    .locals 3
    .parameter "shotmode"
    .parameter "featureCamera"

    .prologue
    .line 40
    sget-object v2, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_CLASS:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 42
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/hwcamera/feature/shot/IFeatureShotMode;>;"
    if-nez v0, :cond_0

    .line 43
    const-class v0, Lcom/android/hwcamera/feature/shot/SingleModeFeature;

    .line 46
    :cond_0
    sget-object v2, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_OBJ:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    .line 47
    .local v1, shotModeObj:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    if-nez v1, :cond_1

    .line 48
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getInstance(Ljava/lang/Class;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->SHOTMODE_OBJ:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->setFeatureCamera(Lcom/android/hwcamera/feature/ICamera;)V

    .line 54
    :cond_2
    return-object v1
.end method
