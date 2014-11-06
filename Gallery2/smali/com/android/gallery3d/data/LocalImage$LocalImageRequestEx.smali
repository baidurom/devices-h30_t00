.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalImageRequestEx"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/LocalImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocalImage;ILjava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/util/GalleryUtils$Params;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "mimeType"
    .parameter "localFilePath"
    .parameter "params"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput p2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mType:I

    .line 667
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    .line 668
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    .line 669
    iput-object p5, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    .line 670
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 5
    .parameter "jc"

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mType:I

    if-nez v1, :cond_1

    .line 674
    :cond_0
    const-string v1, "LocalImage"

    const-string v2, "LocalImageRequestEx:got null mLocalFilePath or mParams"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    .line 677
    :cond_1
    const/4 v0, 0x0

    .line 678
    .local v0, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    iget-object v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method
