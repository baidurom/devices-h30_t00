.class public Lcom/android/hwcamera/autorama/ui/RotateProgress;
.super Ljava/lang/Object;
.source "RotateProgress.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateProgress"


# instance fields
.field private mContext:Lcom/android/hwcamera/CameraActivity;

.field private mProgressView:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    .line 42
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRootView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mProgressView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001fd

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public setRotation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mProgressView:Landroid/view/View;

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 53
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d01a2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/autorama/ui/RotateProgress;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    return-void
.end method
