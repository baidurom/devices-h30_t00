.class Lcom/android/hwcamera/PanoramaModule$6;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$6;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$6;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$000(Lcom/android/hwcamera/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$6;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$2000(Lcom/android/hwcamera/PanoramaModule;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$6;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->cancelHighResComputation()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$2100(Lcom/android/hwcamera/PanoramaModule;)V

    goto :goto_0
.end method
