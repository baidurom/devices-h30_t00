.class Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThumbnailTask"
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

.field private thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)V
    .locals 0
    .parameter
    .parameter "thumbnailItem"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    .line 271
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    .line 273
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->type:I
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$900(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->picData:[B
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1000(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->orientation:I
    invoke-static {v2}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1100(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->inSampleSize:I
    invoke-static {v3}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1200(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->uri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1300(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v1

    .line 296
    :goto_0
    return-object v1

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->type:I
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$900(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->videoFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1400(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->thumbnailWidth:I
    invoke-static {v2}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1500(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->thumbnailItem:Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->uri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->access$1300(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v1

    goto :goto_0

    .line 296
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/hwcamera/thumbnail/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #setter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$202(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/Thumbnail;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #calls: Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$700(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 266
    check-cast p1, Lcom/android/hwcamera/thumbnail/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$UpdateThumbnailTask;->onPostExecute(Lcom/android/hwcamera/thumbnail/Thumbnail;)V

    return-void
.end method
