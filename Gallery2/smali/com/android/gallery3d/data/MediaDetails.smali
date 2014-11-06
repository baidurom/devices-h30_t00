.class public Lcom/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x67

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DRM_ACTION:I = 0x9a

.field public static final INDEX_DRM_FOWARDABLE:I = 0x97

.field public static final INDEX_DRM_LICENSE_COUNT:I = 0x98

.field public static final INDEX_DRM_LICENSE_STATUS:I = 0x99

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x65

.field public static final INDEX_FLASH:I = 0x6a

.field public static final INDEX_FOCAL_LENGTH:I = 0x68

.field public static final INDEX_HEIGHT:I = 0x7

.field public static final INDEX_ISO:I = 0x66

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x3e7

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x2

.field public static final INDEX_NUMBER:I = 0x96

.field public static final INDEX_ORIENTATION:I = 0x3e6

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SIZE:I = 0x5

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x69

.field public static final INDEX_WIDTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method public static extractDrmInfo(Lcom/android/gallery3d/data/MediaDetails;Lcom/android/gallery3d/data/LocalMediaItem;)V
    .locals 2
    .parameter "details"
    .parameter "item"

    .prologue
    .line 161
    const/16 v0, 0x97

    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->canForward()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 162
    const/16 v0, 0x98

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 163
    const/16 v0, 0x9a

    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->getMediaType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 164
    const/16 v0, 0x99

    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->hasRight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public static extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 5
    .parameter "details"
    .parameter "filePath"

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v3, "Flash"

    const/16 v4, 0x6a

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 139
    const-string v3, "ImageWidth"

    const/4 v4, 0x6

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 140
    const-string v3, "ImageLength"

    const/4 v4, 0x7

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 142
    const-string v3, "Make"

    const/16 v4, 0x3e7

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 143
    const-string v3, "Model"

    const/4 v4, 0x2

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 144
    const-string v3, "FNumber"

    const/16 v4, 0x67

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 145
    const-string v3, "ISOSpeedRatings"

    const/16 v4, 0x66

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 146
    const-string v3, "WhiteBalance"

    const/16 v4, 0x69

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 148
    const-string v3, "ExposureTime"

    const/16 v4, 0x65

    invoke-static {p0, v1, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 151
    invoke-static {p1}, Lcom/android/gallery3d/data/MediaDetails;->extractFocalLengthInfo(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, focalLeng35:I
    if-eqz v2, :cond_0

    .line 153
    const/16 v3, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #focalLeng35:I
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "MediaDetails"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static extractFocalLengthInfo(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, focalLeng35:I
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object v1

    .line 171
    .local v1, exifData:Lcom/android/gallery3d/exif/ExifData;
    const/16 v3, -0x5bfb

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/exif/ExifData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifTag;->getUnsignedShort(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 178
    .end local v1           #exifData:Lcom/android/gallery3d/exif/ExifData;
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MediaDetails"

    const-string v4, "No focal lenght in 35"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaDetails"

    const-string v4, "No focal lenght in 35"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 3
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 125
    const/16 v2, 0x6a

    if-ne p3, v2, :cond_1

    .line 126
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 128
    .local v0, state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {p0, p3, v0}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 133
    .end local v0           #state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
