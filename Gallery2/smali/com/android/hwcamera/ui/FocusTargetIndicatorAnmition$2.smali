.class Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;
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
    .line 479
    iput-object p1, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 482
    const-string v0, ""

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;->this$0:Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/ui/TargetView;
    invoke-static {v0}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;->access$000(Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition;)Lcom/android/hwcamera/ui/TargetView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setAlpha(F)V

    .line 484
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 487
    const-string v0, ""

    const-string v1, "onAnimationend"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ui/FocusTargetIndicatorAnmition$2;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 489
    return-void
.end method
