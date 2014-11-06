.class public Lcom/android/hwcamera/feature/HwExtCameraHanler;
.super Landroid/os/Handler;
.source "HwExtCameraHanler.java"


# static fields
.field private static final MSG_FACES_DETECTED_DATA:I = 0x101

.field private static final MSG_LCD_COMPENSATE_LIGHT:I = 0x10b

.field private static final MSG_SCENE_DETECTION_DATA:I = 0x108

.field private static final MSG_TARGET_TRACKING:I = 0x10a

.field private static final SCENE_INDEX:Ljava/lang/String; = "sceneindex"

.field private static final TAG:Ljava/lang/String; = "HwExtCameraHanler"

.field private static final TARGET_TRACKING_RECT:Ljava/lang/String; = "tragetTrackingRect"


# instance fields
.field private mIsNoFaceDetect:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/HwExtCameraHanler;->mIsNoFaceDetect:Z

    .line 35
    return-void
.end method

.method private parseFaceData([Landroid/os/Bundle;)[Lcom/android/hwcamera/facedetect/event/Face;
    .locals 5
    .parameter "faceData"

    .prologue
    .line 85
    array-length v4, p1

    new-array v2, v4, [Lcom/android/hwcamera/facedetect/event/Face;

    .line 86
    .local v2, facesList:[Lcom/android/hwcamera/facedetect/event/Face;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 87
    aget-object v0, p1, v3

    .line 88
    .local v0, face:Landroid/os/Bundle;
    new-instance v1, Lcom/android/hwcamera/facedetect/event/Face;

    invoke-direct {v1}, Lcom/android/hwcamera/facedetect/event/Face;-><init>()V

    .line 89
    .local v1, faceinfo:Lcom/android/hwcamera/facedetect/event/Face;
    const-string v4, "id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/facedetect/event/Face;->setFaceId(I)V

    .line 90
    const-string v4, "blinkScore"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/facedetect/event/Face;->setBlinkPercent(I)V

    .line 91
    const-string v4, "smileScore"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/facedetect/event/Face;->setSmilePercent(I)V

    .line 92
    const-string v4, "rect"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/facedetect/event/Face;->setFaceRect(Landroid/graphics/Rect;)V

    .line 93
    aput-object v1, v2, v3

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0           #face:Landroid/os/Bundle;
    .end local v1           #faceinfo:Lcom/android/hwcamera/facedetect/event/Face;
    :cond_0
    return-object v2
.end method

.method private parseTargetTrackingData(Landroid/os/Bundle;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 4
    .parameter "targetTrackingData"

    .prologue
    .line 75
    new-instance v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;-><init>()V

    .line 76
    .local v0, targetTracking:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    const-string v2, "tragetTrackingRect"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 77
    .local v1, tempRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->setTargetRect(Landroid/graphics/Rect;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "BC_IMPOSSIBLE_CAST",
            "BC_IMPOSSIBLE_INSTANCEOF"
        }
    .end annotation

    .prologue
    .line 40
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 42
    :sswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, faceData:[Landroid/os/Bundle;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, [Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 45
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/os/Bundle;

    move-object v1, v4

    check-cast v1, [Landroid/os/Bundle;

    .line 47
    :cond_1
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/hwcamera/feature/HwExtCameraHanler;->mIsNoFaceDetect:Z

    if-nez v4, :cond_0

    .line 48
    :cond_2
    array-length v4, v1

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/hwcamera/feature/HwExtCameraHanler;->mIsNoFaceDetect:Z

    .line 49
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/feature/HwExtCameraHanler;->parseFaceData([Landroid/os/Bundle;)[Lcom/android/hwcamera/facedetect/event/Face;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;-><init>([Lcom/android/hwcamera/facedetect/event/Face;)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    goto :goto_0

    .line 48
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 52
    .end local v1           #faceData:[Landroid/os/Bundle;
    :sswitch_1
    const-string v4, "HwExtCameraHanler"

    const-string v5, "ENTER LCD COMPENSATE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/eventcenter/lcdflash/LcdFlashEvent;

    invoke-direct {v5}, Lcom/android/hwcamera/eventcenter/lcdflash/LcdFlashEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    goto :goto_0

    .line 56
    :sswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 57
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 58
    .local v3, targetTrackingData:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/feature/HwExtCameraHanler;->parseTargetTrackingData(Landroid/os/Bundle;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;-><init>(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    goto :goto_0

    .line 64
    .end local v3           #targetTrackingData:Landroid/os/Bundle;
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 66
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "sceneindex"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, scene:I
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;

    invoke-direct {v5, v2}, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x108 -> :sswitch_3
        0x10a -> :sswitch_2
        0x10b -> :sswitch_1
    .end sparse-switch
.end method
