.class Lcom/android/gallery3d/app/PhotoPage$6;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/HdrLableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "PhotoPage"

    const-string v1, "onLayout() --> mHdrLableView.layout"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/HdrLableView;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/gallery3d/ui/HdrLableView;->layout(IIII)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MediaItemInfoView;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/gallery3d/ui/MediaItemInfoView;->layout(IIII)V

    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 534
    return-void
.end method
