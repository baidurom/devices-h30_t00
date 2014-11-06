.class Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;
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
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/UriImage;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/data/UriImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #calls: Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v2, p1}, Lcom/android/gallery3d/data/UriImage;->access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 233
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/android/gallery3d/data/UriImage;->access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 227
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    #setter for: Lcom/android/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/UriImage;->access$302(Lcom/android/gallery3d/data/UriImage;I)I

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    #setter for: Lcom/android/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/UriImage;->access$402(Lcom/android/gallery3d/data/UriImage;I)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
