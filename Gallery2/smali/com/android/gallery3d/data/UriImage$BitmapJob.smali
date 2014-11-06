.class Lcom/android/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/UriImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 242
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->initstate()V
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$500(Lcom/android/gallery3d/data/UriImage;)V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/data/UriImage;->access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v7, v8

    .line 274
    :cond_0
    :goto_0
    return-object v7

    .line 253
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v0}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    .line 254
    .local v6, targetSize:I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$600(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    move-object v0, p1

    #calls: Lcom/android/gallery3d/data/UriImage;->decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/data/UriImage;->access$900(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 260
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {p1, v0, v5, v6, v1}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 265
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v7, :cond_3

    :cond_2
    move-object v7, v8

    .line 266
    goto :goto_0

    .line 269
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 270
    invoke-static {v7, v6, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 272
    :cond_4
    invoke-static {v7, v6, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
