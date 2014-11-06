.class public Lcom/android/gallery3d/util/NameCompareUtils;
.super Ljava/lang/Object;
.source "NameCompareUtils.java"


# static fields
.field private static final EQUAL:I = 0x0

.field private static final LEFT_IS_BIGGER:I = 0x1

.field private static final RIGHT_IS_BIGGER:I = -0x1

.field private static final TOP_ALBUM_BUCKET_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/util/NameCompareUtils;->TOP_ALBUM_BUCKET_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareAlbum(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet;)I
    .locals 8
    .parameter "leftSet"
    .parameter "rightSet"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, leftSetBucketID:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v5

    .line 61
    .local v5, rightSetBucketID:I
    if-ne v3, v5, :cond_0

    .line 62
    const/4 v6, 0x0

    .line 72
    :goto_0
    return v6

    .line 64
    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/NameCompareUtils;->TOP_ALBUM_BUCKET_IDS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_3

    aget v2, v0, v1

    .line 65
    .local v2, id:I
    if-ne v3, v2, :cond_1

    .line 66
    const/4 v6, -0x1

    goto :goto_0

    .line 68
    :cond_1
    if-ne v5, v2, :cond_2

    .line 69
    const/4 v6, 0x1

    goto :goto_0

    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    .end local v2           #id:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/util/NameCompareUtils;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static compareChar(Lcom/android/gallery3d/util/HanziToPinyin$Token;Lcom/android/gallery3d/util/HanziToPinyin$Token;)I
    .locals 4
    .parameter "leftChar"
    .parameter "rightChar"

    .prologue
    const/4 v2, 0x2

    .line 42
    iget v0, p0, Lcom/android/gallery3d/util/HanziToPinyin$Token;->type:I

    .line 43
    .local v0, leftCharType:I
    iget v1, p1, Lcom/android/gallery3d/util/HanziToPinyin$Token;->type:I

    .line 45
    .local v1, rightCharType:I
    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 51
    :goto_0
    return v2

    .line 48
    :cond_0
    if-ne v1, v2, :cond_1

    if-eq v0, v2, :cond_1

    .line 49
    const/4 v2, -0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/gallery3d/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "leftString"
    .parameter "rightString"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 14
    if-nez p0, :cond_1

    .line 15
    if-nez p1, :cond_0

    move v5, v7

    .line 38
    :goto_0
    return v5

    :cond_0
    move v5, v8

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    if-nez p1, :cond_2

    move v5, v9

    .line 18
    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/HanziToPinyin;->getInstance()Lcom/android/gallery3d/util/HanziToPinyin;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/gallery3d/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 21
    .local v2, leftStringToken:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/util/HanziToPinyin$Token;>;"
    invoke-static {}, Lcom/android/gallery3d/util/HanziToPinyin;->getInstance()Lcom/android/gallery3d/util/HanziToPinyin;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 23
    .local v4, rightStringToken:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/util/HanziToPinyin$Token;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 24
    .local v3, maxLength:I
    const/4 v0, 0x0

    .line 26
    .local v0, charCompareResult:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-ge v5, v6, :cond_3

    move v5, v8

    .line 28
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-ge v5, v6, :cond_4

    move v5, v9

    .line 31
    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/util/HanziToPinyin$Token;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/util/HanziToPinyin$Token;

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/NameCompareUtils;->compareChar(Lcom/android/gallery3d/util/HanziToPinyin$Token;Lcom/android/gallery3d/util/HanziToPinyin$Token;)I

    move-result v0

    .line 34
    if-eqz v0, :cond_5

    move v5, v0

    .line 35
    goto :goto_0

    .line 26
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v5, v7

    .line 38
    goto :goto_0
.end method
