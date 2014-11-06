.class public Lcom/android/hwcamera/thumbnail/ThumbnailService;
.super Ljava/lang/Object;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;,
        Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;,
        Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;,
        Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;
    }
.end annotation


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCameraActivity:Lcom/android/hwcamera/CameraActivity;

.field private mFirstInit:Z

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/hwcamera/thumbnail/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mSilentMode:Z

.field private mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

.field private mThumbnailLayout:Landroid/view/ViewGroup;

.field private mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

.field private mThumnailAnimation:Landroid/view/animation/Animation;

.field private mUpdateThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/hwcamera/thumbnail/Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 2
    .parameter "mCameraActivity"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mSilentMode:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z

    .line 47
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService$1;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 63
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    .line 64
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->isSecureCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->setSecureCameraMode(Z)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumnailAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/Thumbnail;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/thumbnail/ThumbnailService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V

    return-void
.end method

.method private saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->fromFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/ThumbnailService$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/hwcamera/thumbnail/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :cond_0
    return-void
.end method

.method private updateThumbnail(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)V
    .locals 2
    .parameter "thumbnailItem"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->needsThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mUpdateThumbnailTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateThumbnail(Z)V
    .locals 2
    .parameter "lookAtCache"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->needsThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 170
    :cond_1
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateThumbnailView()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v1, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService$2;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public keep()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->keep(Lcom/android/hwcamera/thumbnail/Thumbnail;)V

    .line 105
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    invoke-direct {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->saveThumbnailToFile()V

    .line 156
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 158
    iput-object v2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mUpdateThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mUpdateThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 162
    iput-object v2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mUpdateThumbnailTask:Landroid/os/AsyncTask;

    .line 165
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mFirstInit:Z

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isSecureCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->setSecureCameraMode(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailCached()V

    .line 152
    return-void
.end method

.method public setThumbnailView(Lcom/android/hwcamera/ui/RotateImageView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "mThumbnailView"
    .parameter "thumbnailLayout"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 71
    iput-object p2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnailLayout:Landroid/view/ViewGroup;

    .line 72
    return-void
.end method

.method public setUpdateSilently(Z)V
    .locals 0
    .parameter "silent"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mSilentMode:Z

    .line 76
    return-void
.end method

.method public updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V
    .locals 1
    .parameter "bitmap"
    .parameter "uri"
    .parameter "orientation"

    .prologue
    .line 132
    invoke-static {p2, p1, p3}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 133
    invoke-direct {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V

    .line 134
    return-void
.end method

.method public updatePictureThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)V
    .locals 1
    .parameter "filePath"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"
    .parameter "stereo3DType"

    .prologue
    .line 127
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V

    .line 129
    return-void
.end method

.method public updatePictureThumbnail([BIILandroid/net/Uri;)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 122
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;-><init>([BIILandroid/net/Uri;)V

    .line 123
    .local v0, thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnail(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)V

    .line 124
    return-void
.end method

.method public updateThumbnailCached()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->needsThumbnail()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 115
    invoke-direct {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnail(Z)V

    goto :goto_0
.end method

.method public updateThumbnailUncached()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnail(Z)V

    .line 143
    return-void
.end method

.method public updateVideoThumbnail(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 1
    .parameter "mCurrentVideoFilename"
    .parameter "thumbnailWidth"
    .parameter "mCurrentVideoUri"

    .prologue
    .line 137
    new-instance v0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 138
    .local v0, thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnail(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)V

    .line 139
    return-void
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
