.class Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$502(Lcom/android/hwcamera/autorama/PanoramaManager;Z)Z

    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->startCenterAnimation()V

    .line 74
    return-void
.end method
