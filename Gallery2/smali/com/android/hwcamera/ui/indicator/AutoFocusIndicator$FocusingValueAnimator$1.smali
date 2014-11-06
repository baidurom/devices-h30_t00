.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;
.super Ljava/lang/Object;
.source "AutoFocusIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 79
    .local v0, rate:F
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    #getter for: Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->mFocusingView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->access$300(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    #getter for: Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->mFocusingView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->access$300(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->cancel()V

    goto :goto_0
.end method
