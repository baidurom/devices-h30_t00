.class Lcom/android/hwcamera/autorama/PanoramaManager$1;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/PanoramaManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$1;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$1;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    return-void
.end method
