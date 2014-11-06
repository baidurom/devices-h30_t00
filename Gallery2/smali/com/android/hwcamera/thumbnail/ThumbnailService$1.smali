.class Lcom/android/hwcamera/thumbnail/ThumbnailService$1;
.super Ljava/lang/Object;
.source "ThumbnailService.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$1;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$1;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$000(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$1;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$100(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 55
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 58
    return-void
.end method
