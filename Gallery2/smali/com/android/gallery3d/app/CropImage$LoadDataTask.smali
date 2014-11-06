.class Lcom/android/gallery3d/app/CropImage$LoadDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
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
.field mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1238
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-object v1

    .line 1246
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    .line 1247
    .local v0, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v0, :cond_0

    .line 1250
    invoke-interface {v0, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
