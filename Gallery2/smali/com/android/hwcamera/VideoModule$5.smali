.class Lcom/android/hwcamera/VideoModule$5;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->initTwinkleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$5;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1208
    .local v0, rate:F
    const/high16 v1, 0x3f00

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$5;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$3500(Lcom/android/hwcamera/VideoModule;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1213
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$5;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$3500(Lcom/android/hwcamera/VideoModule;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method
