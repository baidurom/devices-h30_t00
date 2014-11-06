.class Lcom/android/hwcamera/VideoModule$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoModule.java"


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
    .line 1193
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$4;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$4;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3500(Lcom/android/hwcamera/VideoModule;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/VideoModule$4;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1197
    return-void
.end method
