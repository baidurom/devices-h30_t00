.class Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
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
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/thumbnail/ThumbnailService;Z)V
    .locals 0
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-boolean p2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->mLookAtCache:Z

    .line 178
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v5, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v5}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$600(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 185
    .local v3, t:Lcom/android/hwcamera/thumbnail/Thumbnail;
    iget-boolean v5, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #getter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mCameraActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v5}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$600(Lcom/android/hwcamera/thumbnail/ThumbnailService;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v3

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 209
    .end local v3           #t:Lcom/android/hwcamera/thumbnail/Thumbnail;
    :cond_1
    :goto_0
    return-object v3

    .line 191
    .restart local v3       #t:Lcom/android/hwcamera/thumbnail/Thumbnail;
    :cond_2
    if-nez v3, :cond_1

    .line 192
    new-array v2, v6, [Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 194
    .local v2, result:[Lcom/android/hwcamera/thumbnail/Thumbnail;
    invoke-static {v1, v2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/hwcamera/thumbnail/Thumbnail;)I

    move-result v0

    .line 196
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v4

    .line 200
    goto :goto_0

    .line 198
    :pswitch_1
    const/4 v4, 0x0

    aget-object v3, v2, v4

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->cancel(Z)Z

    move-object v3, v4

    .line 206
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/hwcamera/thumbnail/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #setter for: Lcom/android/hwcamera/thumbnail/ThumbnailService;->mThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$202(Lcom/android/hwcamera/thumbnail/ThumbnailService;Lcom/android/hwcamera/thumbnail/Thumbnail;)Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 216
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->this$0:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    #calls: Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailView()V
    invoke-static {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->access$700(Lcom/android/hwcamera/thumbnail/ThumbnailService;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, Lcom/android/hwcamera/thumbnail/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService$LoadThumbnailTask;->onPostExecute(Lcom/android/hwcamera/thumbnail/Thumbnail;)V

    return-void
.end method
