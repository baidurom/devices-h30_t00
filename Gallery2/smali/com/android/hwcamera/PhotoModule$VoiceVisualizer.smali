.class Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceVisualizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 552
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;->this$0:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f100036

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    .line 554
    .local v0, voiceVisualizerLayout:Lcom/android/hwcamera/ui/RotateLayout;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 555
    return-void

    .line 554
    .restart local p1
    :cond_1
    add-int/lit8 v1, p1, 0x5a

    rem-int/lit16 p1, v1, 0x168

    goto :goto_0
.end method
