.class Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceImageDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 3034
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3034
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public closeParcelFileDescriptor()V
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->closeParcelFileDescriptor()V

    .line 3070
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3058
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 3064
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public needIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3049
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3050
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5600(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isVoiceImage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTapeError()V
    .locals 3

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0d046b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3039
    return-void
.end method

.method public refreshIconWhenReady()V
    .locals 2

    .prologue
    const/16 v1, 0x24

    .line 3043
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3044
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3045
    return-void
.end method
