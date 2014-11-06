.class public Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;
.super Ljava/lang/Object;
.source "SceneDetectEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field private mScene:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "scene"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;->mScene:I

    .line 13
    iput p1, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;->mScene:I

    .line 14
    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getSceneData()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;->mScene:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "scene_detect_event_type"

    return-object v0
.end method
