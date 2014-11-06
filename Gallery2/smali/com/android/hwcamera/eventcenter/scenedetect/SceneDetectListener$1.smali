.class Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;
.super Ljava/lang/Object;
.source "SceneDetectListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$event:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;->this$0:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iput-object p3, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;->val$event:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener$1;->val$event:Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;

    invoke-virtual {v1}, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectEvent;->getSceneData()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->onSceneDetected(I)V

    .line 28
    return-void
.end method
