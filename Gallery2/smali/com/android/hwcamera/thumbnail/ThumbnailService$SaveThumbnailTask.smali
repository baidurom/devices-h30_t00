.class Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/hwcamera/thumbnail/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/ThumbnailService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;-><init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, [Lcom/android/hwcamera/thumbnail/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;->doInBackground([Lcom/android/hwcamera/thumbnail/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/hwcamera/thumbnail/Thumbnail;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 229
    array-length v2, p1

    .line 230
    .local v2, n:I
    iget-object v3, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$SaveThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$600(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 231
    .local v0, filesDir:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 232
    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
