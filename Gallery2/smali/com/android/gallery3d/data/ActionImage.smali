.class public Lcom/android/gallery3d/data/ActionImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "ActionImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/ActionImage$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionImage"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "resourceId"

    .prologue
    .line 40
    invoke-static {}, Lcom/android/gallery3d/data/ActionImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 41
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/ActionImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 42
    iput p3, p0, Lcom/android/gallery3d/data/ActionImage;->mResourceId:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/ActionImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/data/ActionImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/ActionImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/data/ActionImage;->mResourceId:I

    return v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x8000

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/android/gallery3d/data/ActionImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/ActionImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/ActionImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    return-void
.end method
