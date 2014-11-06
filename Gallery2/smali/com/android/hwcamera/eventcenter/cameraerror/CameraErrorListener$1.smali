.class Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;
.super Ljava/lang/Object;
.source "CameraErrorListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$e:Lcom/android/hwcamera/eventcenter/Event;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener;Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/eventcenter/Event;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;->this$0:Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iput-object p3, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;->val$e:Lcom/android/hwcamera/eventcenter/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener$1;->val$e:Lcom/android/hwcamera/eventcenter/Event;

    check-cast v0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;

    invoke-virtual {v0}, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->onCameraError(I)V

    .line 27
    return-void
.end method
