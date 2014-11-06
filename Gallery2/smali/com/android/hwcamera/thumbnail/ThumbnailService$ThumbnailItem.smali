.class Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;
.super Ljava/lang/Object;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailItem"
.end annotation


# static fields
.field public static final PICTURE_TYPE:I = 0x1

.field public static final VIDEO_TYPE:I = 0x2


# instance fields
.field private inSampleSize:I

.field private orientation:I

.field private picData:[B

.field private thumbnailWidth:I

.field private type:I

.field private uri:Landroid/net/Uri;

.field private videoFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 1
    .parameter "mCurrentVideoFilename"
    .parameter "thumbnailWidth"
    .parameter "mCurrentVideoUri"

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->videoFilename:Ljava/lang/String;

    .line 253
    iput p2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->thumbnailWidth:I

    .line 254
    iput-object p3, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->uri:Landroid/net/Uri;

    .line 255
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->type:I

    .line 256
    return-void
.end method

.method public constructor <init>([BIILandroid/net/Uri;)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->picData:[B

    .line 260
    iput p2, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->orientation:I

    .line 261
    iput p3, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->inSampleSize:I

    .line 262
    iput-object p4, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->uri:Landroid/net/Uri;

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->type:I

    .line 264
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->picData:[B

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->orientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->inSampleSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->videoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->thumbnailWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget v0, p0, Lcom/android/hwcamera/thumbnail/ThumbnailService$ThumbnailItem;->type:I

    return v0
.end method
