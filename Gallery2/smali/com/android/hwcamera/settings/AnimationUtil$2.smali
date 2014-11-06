.class final Lcom/android/hwcamera/settings/AnimationUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/AnimationUtil;->translate(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newframe:Landroid/view/View;

.field final synthetic val$oldFrame:Landroid/view/View;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$parentView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$newframe:Landroid/view/View;

    iput-object p3, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$oldFrame:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/settings/AnimationUtil$2;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$parentView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/hwcamera/settings/AnimationUtil;->getRelativeX(Landroid/view/ViewGroup;)I

    move-result v0

    .line 59
    .local v0, x:I
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$newframe:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 61
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$oldFrame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$2;->val$oldFrame:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 63
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 64
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 49
    return-void
.end method
