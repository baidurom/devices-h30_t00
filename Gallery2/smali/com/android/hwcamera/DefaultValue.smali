.class public Lcom/android/hwcamera/DefaultValue;
.super Ljava/lang/Object;
.source "DefaultValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/DefaultValue$1;,
        Lcom/android/hwcamera/DefaultValue$Default;
    }
.end annotation


# static fields
.field public static final KEY_DEFAULTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/DefaultValue$Default;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 14
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    .line 17
    new-instance v1, Lcom/android/hwcamera/DefaultValue$Default;

    invoke-direct {v1, v6}, Lcom/android/hwcamera/DefaultValue$Default;-><init>(Lcom/android/hwcamera/DefaultValue$1;)V

    .line 19
    .local v1, shootModeDefault:Lcom/android/hwcamera/DefaultValue$Default;
    const-string v4, "ro.hwcamera.front.beauty"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    const v4, 0x7f0d00cd

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setFrontCameratDefault(I)V

    .line 25
    :goto_0
    const v4, 0x7f0d00cb

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setBackCameraDefault(I)V

    .line 26
    sget-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    const-string v5, "pref_camera_shooting_mode_key"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lcom/android/hwcamera/DefaultValue$Default;

    invoke-direct {v3, v6}, Lcom/android/hwcamera/DefaultValue$Default;-><init>(Lcom/android/hwcamera/DefaultValue$1;)V

    .line 29
    .local v3, touchCaptureDefault:Lcom/android/hwcamera/DefaultValue$Default;
    const v4, 0x7f0d010f

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setFrontCameratDefault(I)V

    .line 30
    const v4, 0x7f0d0110

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setBackCameraDefault(I)V

    .line 31
    sget-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    const-string v5, "pref_camera_touch_snapshot_key"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Lcom/android/hwcamera/DefaultValue$Default;

    invoke-direct {v2, v6}, Lcom/android/hwcamera/DefaultValue$Default;-><init>(Lcom/android/hwcamera/DefaultValue$1;)V

    .line 34
    .local v2, timerDefault:Lcom/android/hwcamera/DefaultValue$Default;
    const v4, 0x7f0d010b

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setFrontCameratDefault(I)V

    .line 35
    const v4, 0x7f0d010a

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setBackCameraDefault(I)V

    .line 36
    sget-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    const-string v5, "pref_camera_counter_key"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/android/hwcamera/DefaultValue$Default;

    invoke-direct {v0, v6}, Lcom/android/hwcamera/DefaultValue$Default;-><init>(Lcom/android/hwcamera/DefaultValue$1;)V

    .line 39
    .local v0, pictureSizeDefault:Lcom/android/hwcamera/DefaultValue$Default;
    const v4, 0x7f0d010c

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setFrontCameratDefault(I)V

    .line 40
    const v4, 0x7f0d010d

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setBackCameraDefault(I)V

    .line 41
    sget-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    const-string v5, "pref_camera_picturesize_key"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void

    .line 22
    .end local v0           #pictureSizeDefault:Lcom/android/hwcamera/DefaultValue$Default;
    .end local v2           #timerDefault:Lcom/android/hwcamera/DefaultValue$Default;
    .end local v3           #touchCaptureDefault:Lcom/android/hwcamera/DefaultValue$Default;
    :cond_0
    const v4, 0x7f0d00cc

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/DefaultValue$Default;->setFrontCameratDefault(I)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "key"
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {p0}, Lcom/android/hwcamera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    .line 46
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 56
    :cond_0
    :goto_0
    return-object v2

    .line 47
    :cond_1
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/android/hwcamera/DefaultValue;->KEY_DEFAULTS:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/DefaultValue$Default;

    .line 53
    .local v0, mDefault:Lcom/android/hwcamera/DefaultValue$Default;
    if-nez v0, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p2}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/hwcamera/DefaultValue$Default;->getFrontCameratDefault()I

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, p1, v2}, Lcom/android/hwcamera/Util;->persistStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Lcom/android/hwcamera/DefaultValue$Default;->getBackCameraDefault()I

    move-result v3

    goto :goto_1
.end method
