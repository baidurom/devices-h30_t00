.class Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;
.super Ljava/lang/Object;
.source "FaceDetectListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/facedetect/event/FaceDetectListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/facedetect/event/FaceDetectListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$event:Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/facedetect/event/FaceDetectListener;Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;->this$0:Lcom/android/hwcamera/facedetect/event/FaceDetectListener;

    iput-object p2, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iput-object p3, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;->val$event:Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectListener$1;->val$event:Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;

    invoke-virtual {v1}, Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;->getFacesData()[Lcom/android/hwcamera/facedetect/event/Face;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V

    .line 27
    return-void
.end method
