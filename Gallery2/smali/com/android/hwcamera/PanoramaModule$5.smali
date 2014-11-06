.class Lcom/android/hwcamera/PanoramaModule$5;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/hwcamera/PanoProgressBar$OnDirectionChangeListener;


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
    .line 664
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$5;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$5;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$300(Lcom/android/hwcamera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$5;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/PanoramaModule;->access$1900(Lcom/android/hwcamera/PanoramaModule;I)V

    .line 670
    :cond_0
    return-void
.end method
