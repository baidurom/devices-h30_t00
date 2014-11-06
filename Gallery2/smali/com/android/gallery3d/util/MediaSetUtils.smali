.class public Lcom/android/gallery3d/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static final CAMERA_BUCKET_ID:I

.field private static final CAMERA_DIR:Ljava/io/File;

.field private static final CAMERA_PATH:Ljava/lang/String;

.field private static final CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final EXTERNAL_STORAGE_DIRCETORY:Ljava/lang/String;

.field public static final IMPORTED_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDARY_CAMERA_BUCKET_ID:I

.field public static final SECONDARY_CAMERA_NAME:Ljava/lang/String;

.field public static final sNameMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRCETORY:Ljava/lang/String;

    .line 32
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    .line 33
    new-instance v1, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;

    invoke-direct {v1}, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 35
    const-string v1, "ro.hwcamera.directory"

    const-string v2, "/DCIM/Camera"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/io/File;

    .line 37
    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 38
    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->SECONDARY_CAMERA_NAME:Ljava/lang/String;

    .line 42
    const-string v1, "download"

    invoke-static {v1}, Lcom/android/gallery3d/util/MediaSetUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 43
    const-string v1, "Imported"

    invoke-static {v1}, Lcom/android/gallery3d/util/MediaSetUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 46
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, paths:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, v4, :cond_1

    .line 48
    :cond_0
    sput v5, Lcom/android/gallery3d/util/MediaSetUtils;->SECONDARY_CAMERA_BUCKET_ID:I

    .line 55
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/gallery3d/data/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/video/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    return-void

    .line 50
    :cond_1
    new-instance v1, Ljava/io/File;

    aget-object v2, v0, v4

    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/util/MediaSetUtils;->SECONDARY_CAMERA_BUCKET_ID:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static bucketId2ResourceId(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 80
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/android/gallery3d/util/MediaSetUtils;->initNameMap()V

    .line 83
    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRCETORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static initNameMap()V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    const v2, 0x7f0d03d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    const v2, 0x7f0d0380

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    const v2, 0x7f0d0382

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    const-string v1, "Pictures/Screenshots"

    invoke-static {v1}, Lcom/android/gallery3d/util/MediaSetUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0d0383

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    const-string v1, "EditedOnlinePhotos"

    invoke-static {v1}, Lcom/android/gallery3d/util/MediaSetUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0d0381

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    const-string v1, "CloudPicture"

    invoke-static {v1}, Lcom/android/gallery3d/util/MediaSetUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0d03f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    return-void
.end method

.method public static isCameraSource(Lcom/android/gallery3d/data/Path;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
