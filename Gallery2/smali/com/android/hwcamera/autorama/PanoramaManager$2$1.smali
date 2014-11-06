.class Lcom/android/hwcamera/autorama/PanoramaManager$2$1;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/autorama/PanoramaManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/autorama/PanoramaManager$2;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$2;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$1102(Lcom/android/hwcamera/autorama/PanoramaManager;Z)Z

    .line 286
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$2;

    iget-boolean v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->val$isMerge:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;->this$1:Lcom/android/hwcamera/autorama/PanoramaManager$2;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #calls: Lcom/android/hwcamera/autorama/PanoramaManager;->onHardwareStopped(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$800(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V

    .line 291
    :cond_0
    return-void
.end method
