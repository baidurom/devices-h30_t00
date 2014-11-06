.class Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$3;
.super Ljava/lang/Object;
.source "TargetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 498
    .local v0, rate:F
    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v1}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$000(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/TargetView;->setAlpha(F)V

    .line 499
    return-void
.end method
