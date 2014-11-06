.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 158
    .local v1, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v1, :cond_0

    .line 159
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z
    invoke-static {v5, v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$002(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z

    .line 160
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    invoke-static {v6}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v7}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    invoke-static {v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/util/FutureListener;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    #setter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v5, v6}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$302(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    .line 166
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 167
    .local v2, height:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v5, 0x4480

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v7, v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
