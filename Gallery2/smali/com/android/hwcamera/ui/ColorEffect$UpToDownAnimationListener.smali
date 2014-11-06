.class Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;
.super Ljava/lang/Object;
.source "ColorEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpToDownAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ColorEffect;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;-><init>(Lcom/android/hwcamera/ui/ColorEffect;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const-wide/16 v10, 0xe6

    const/16 v9, 0xf

    const/4 v8, 0x0

    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 379
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1200(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 380
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1200(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendButton:Landroid/view/View;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1300(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020108

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 387
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$500(Lcom/android/hwcamera/ui/ColorEffect;)V

    .line 388
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mItemSelected:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1400(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1000(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mHideAndExtendLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1700(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v5}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v5

    const v6, 0x7f0d0199

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v0, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 395
    .local v0, alphAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 397
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v7, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 402
    .local v3, transAnimation:Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 403
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 404
    .local v2, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 405
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 406
    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$UpToDownAnimationListener;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1200(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    return-void

    .line 383
    .end local v0           #alphAnimation:Landroid/view/animation/Animation;
    .end local v2           #set:Landroid/view/animation/AnimationSet;
    .end local v3           #transAnimation:Landroid/view/animation/Animation;
    :cond_0
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 400
    .restart local v0       #alphAnimation:Landroid/view/animation/Animation;
    :cond_1
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v3       #transAnimation:Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 412
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 417
    return-void
.end method
