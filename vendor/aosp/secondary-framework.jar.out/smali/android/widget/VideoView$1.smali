.class Landroid/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 406
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 407
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 409
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoViewEx:Landroid/widget/VideoView$VideoViewEx;
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/widget/VideoView$VideoViewEx;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v1, v1, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v2, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mVideoHeight:I

    #calls: Landroid/widget/VideoView$VideoViewEx;->setRTSPVideoSize(II)V
    invoke-static {v0, v1, v2}, Landroid/widget/VideoView$VideoViewEx;->access$200(Landroid/widget/VideoView$VideoViewEx;II)V

    .line 411
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v0, v0, Landroid/widget/VideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v0, v0, Landroid/widget/VideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v1, v1, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v2, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 413
    iget-object v0, p0, Landroid/widget/VideoView$1;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestLayout()V

    .line 415
    :cond_0
    return-void
.end method
