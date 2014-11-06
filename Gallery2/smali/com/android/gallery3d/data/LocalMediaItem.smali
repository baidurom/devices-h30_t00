.class public abstract Lcom/android/gallery3d/data/LocalMediaItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"

.field protected static final format_normalized_date:Ljava/lang/String; = "strftime(\'%%Y%%m\', %s / 1000, \'unixepoch\') AS normalized_date"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public isDrm:Z

.field public is_hdr:Z

.field public latitude:D

.field public longitude:D

.field public mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field public mimeType:Ljava/lang/String;

.field public normalizedDate:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 41
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 42
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 64
    return-void
.end method


# virtual methods
.method public canForward()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->canForward(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 107
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 108
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 110
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 111
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 112
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v4, v2, v3

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 117
    :cond_0
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 118
    :cond_1
    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 83
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 84
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 85
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedDate()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->normalizedDate:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm:Z

    return v0
.end method

.method public isHdr()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_hdr:Z

    return v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 150
    return-void
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 103
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
