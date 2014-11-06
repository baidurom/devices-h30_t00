.class Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TargetView.java"


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
    .line 510
    iput-object p1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$000(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetX:F
    invoke-static {v1}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$100(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setX(F)V

    .line 513
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$000(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mTargetY:F
    invoke-static {v1}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$200(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setY(F)V

    .line 514
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$300(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 515
    return-void
.end method
