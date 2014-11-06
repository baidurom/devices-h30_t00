.class public Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public bucketPath:Ljava/lang/String;

.field public dateTaken:I

.field public isHidden:Z

.field public isPrivate:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p1, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 317
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Z)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "isHidden"
    .parameter "path"
    .parameter "isPrivate"

    .prologue
    .line 308
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 310
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    .line 311
    iput-boolean p3, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->isHidden:Z

    .line 312
    iput-object p4, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    .line 313
    iput-boolean p5, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->isPrivate:Z

    .line 314
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 327
    instance-of v2, p1, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    if-nez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 328
    check-cast v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 329
    .local v0, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    iget v2, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
