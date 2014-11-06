.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "AutoFocusIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusingValueAnimator"
.end annotation


# instance fields
.field private mFocusingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "focus"

    .prologue
    const/4 v2, 0x2

    .line 69
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 70
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->setFloatValues([F)V

    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->mFocusingView:Landroid/view/View;

    .line 72
    const-wide/16 v0, 0x7d

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->setRepeatMode(I)V

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->setRepeatCount(I)V

    .line 75
    new-instance v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    return-void

    .line 70
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data
.end method

.method static synthetic access$300(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->mFocusingView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public setFocusingView(Landroid/view/View;)V
    .locals 0
    .parameter "mFocusingView"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->mFocusingView:Landroid/view/View;

    .line 90
    return-void
.end method
