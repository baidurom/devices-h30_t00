.class public Lcom/android/gallery3d/data/SnailItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "SnailItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnailItem"


# instance fields
.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 38
    invoke-static {}, Lcom/android/gallery3d/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 39
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/SnailItem;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 79
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
    .line 44
    new-instance v0, Lcom/android/gallery3d/data/SnailItem$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/SnailItem$1;-><init>(Lcom/android/gallery3d/data/SnailItem;)V

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
    .line 55
    new-instance v0, Lcom/android/gallery3d/data/SnailItem$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/SnailItem$2;-><init>(Lcom/android/gallery3d/data/SnailItem;)V

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    return-void
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "screenNail"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/data/SnailItem;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 93
    return-void
.end method

.method public updateVersion()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/gallery3d/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 97
    return-void
.end method