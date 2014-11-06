.class Lcom/android/gallery3d/data/DmsImage$BitmapJob;
.super Ljava/lang/Object;
.source "DmsImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DmsImage;
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

.field final synthetic this$0:Lcom/android/gallery3d/data/DmsImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/DmsImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->mType:I

    .line 223
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 227
    iget-object v4, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    #calls: Lcom/android/gallery3d/data/DmsImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/DmsImage;->access$100(Lcom/android/gallery3d/data/DmsImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 244
    :goto_0
    return-object v0

    .line 228
    :cond_0
    const-string v4, "AirSharing_DmsImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitmapJob done ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    #getter for: Lcom/android/gallery3d/data/DmsImage;->mFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/gallery3d/data/DmsImage;->access$500(Lcom/android/gallery3d/data/DmsImage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v4, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->mType:I

    invoke-static {v4}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 230
    .local v2, targetSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 232
    iget-object v4, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    #getter for: Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/android/gallery3d/data/DmsImage;->access$200(Lcom/android/gallery3d/data/DmsImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->mType:I

    invoke-static {p1, v4, v1, v2, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    .line 236
    goto :goto_0

    .line 239
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 240
    invoke-static {v0, v2, v7}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_3
    invoke-static {v0, v2, v7}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
