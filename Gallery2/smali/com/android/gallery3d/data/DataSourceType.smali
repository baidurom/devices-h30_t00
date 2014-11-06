.class public final Lcom/android/gallery3d/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field private static final LOCAL_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final MTP_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final PHOTOSHARE_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final PICASA_ROOT:Lcom/android/gallery3d/data/Path; = null

.field public static final TYPE_CAMERA:I = 0x4

.field public static final TYPE_LOCAL:I = 0x1

.field public static final TYPE_LOCAL_INNER:I = 0xb

.field public static final TYPE_LOCAL_OUTER:I = 0xc

.field public static final TYPE_MTP:I = 0x3

.field public static final TYPE_NOT_CATEGORIZED:I = 0x0

.field public static final TYPE_PHOTOSHARE_MYPHOTO:I = 0xd

.field public static final TYPE_PHOTOSHARE_MYRECV:I = 0xf

.field public static final TYPE_PHOTOSHARE_MYSHARE:I = 0xe

.field public static final TYPE_PICASA:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "/picasa"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    .line 35
    const-string v0, "/local"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    .line 36
    const-string v0, "/mtp"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    .line 37
    const-string v0, "/photoshare"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->PHOTOSHARE_ROOT:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 5
    .parameter "set"

    .prologue
    const/4 v3, 0x0

    .line 40
    if-nez p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v3

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 45
    .local v0, path:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 49
    .local v1, prefix:Lcom/android/gallery3d/data/Path;
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    .line 50
    :cond_3
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    .line 51
    :cond_4
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    .line 52
    :cond_5
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->PHOTOSHARE_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v2

    .line 54
    .local v2, sourceFolderType:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    const/16 v3, 0xd

    goto :goto_0

    .line 58
    :pswitch_1
    const/16 v3, 0xe

    goto :goto_0

    .line 60
    :pswitch_2
    const/16 v3, 0xf

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
