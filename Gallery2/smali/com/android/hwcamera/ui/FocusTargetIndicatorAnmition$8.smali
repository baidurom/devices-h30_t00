.class Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$8;
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
    .line 537
    iput-object p1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$8;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$8;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$400(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 541
    return-void
.end method
