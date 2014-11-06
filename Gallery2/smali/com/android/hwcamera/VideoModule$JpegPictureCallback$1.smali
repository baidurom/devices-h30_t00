.class Lcom/android/hwcamera/VideoModule$JpegPictureCallback$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/VideoModule$JpegPictureCallback;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule$JpegPictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 3802
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback$1;->this$1:Lcom/android/hwcamera/VideoModule$JpegPictureCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback$1;->this$1:Lcom/android/hwcamera/VideoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 3806
    return-void
.end method
