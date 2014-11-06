.class Lcom/android/hwcamera/thumbnail/ThumbnailService$2;
.super Ljava/lang/Object;
.source "ThumbnailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V
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
    .line 81
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$200(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$300(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/ui/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$200(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$300(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/RotateImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$400(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #setter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$402(Lcom/android/hwcamera/thumbnail/ThumbnailService;Z)Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$500(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$100(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$100(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$000(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$300(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$300(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/ui/RotateImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method
