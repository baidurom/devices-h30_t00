.class Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;
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
.field final synthetic this$0:Lcom/android/gallery3d/data/DmsImage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/DmsImage;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/DmsImage;Lcom/android/gallery3d/data/DmsImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/DmsImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 202
    const-string v2, "AirSharing_DmsImage"

    const-string v3, "BitmapRegionDecoder @ DmsImage"

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    #calls: Lcom/android/gallery3d/data/DmsImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v2, p1}, Lcom/android/gallery3d/data/DmsImage;->access$100(Lcom/android/gallery3d/data/DmsImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    #getter for: Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Lcom/android/gallery3d/data/DmsImage;->access$200(Lcom/android/gallery3d/data/DmsImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 208
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    #setter for: Lcom/android/gallery3d/data/DmsImage;->mWidth:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/DmsImage;->access$302(Lcom/android/gallery3d/data/DmsImage;I)I

    .line 213
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->this$0:Lcom/android/gallery3d/data/DmsImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    #setter for: Lcom/android/gallery3d/data/DmsImage;->mHeight:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/DmsImage;->access$402(Lcom/android/gallery3d/data/DmsImage;I)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
