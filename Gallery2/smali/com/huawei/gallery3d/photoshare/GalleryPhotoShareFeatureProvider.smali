.class public Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;
.super Landroid/content/ContentProvider;
.source "GalleryPhotoShareFeatureProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.huawei.gallery3d.photoshare.provider"

.field private static final FEATURES:Ljava/lang/String; = "is_support_cloudphoto"

.field private static final IS_GALLERY_SUPPORT_PHOTOSHARE:Ljava/lang/String; = "IsGallerySupportPhotoShare"

.field private static final IS_PHOTOSHARE_FOLDER_EMPTY:Ljava/lang/String; = "IsPhotoShareFolderEmpty"

.field private static final TAG:Ljava/lang/String; = "GalleryPhotoShareFeatureProvider"

.field private static final UNKOWN_URI:Ljava/lang/String; = "Unkown URI"

.field private static final URI_MATCH_FEATURES:I = 0x1

.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 33
    sget-object v0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.gallery3d.photoshare.provider"

    const-string v2, "is_support_cloudphoto"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    const-string v3, "GalleryPhotoShareFeatureProvider"

    const-string v4, "photoshare feature query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v3, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 51
    .local v2, match:I
    if-eq v6, v2, :cond_0

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isGallerySupportPhotoShare()Z

    move-result v1

    .line 56
    .local v1, isGallerySupportPhotoShare:Z
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "featureName"

    aput-object v4, v3, v5

    const-string v4, "value"

    aput-object v4, v3, v6

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    .local v0, c:Landroid/database/MatrixCursor;
    const-string v3, "IsGallerySupportPhotoShare"

    aget-object v4, p4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "IsGallerySupportPhotoShare"

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 61
    :cond_1
    const-string v3, "IsPhotoShareFolderEmpty"

    aget-object v4, p4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "IsPhotoShareFolderEmpty"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isPhotoShareFolderEmpty(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 65
    :cond_2
    if-nez v1, :cond_3

    .line 66
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setComponentEnabledSetting(Landroid/content/Context;I)V

    .line 73
    :goto_0
    return-object v0

    .line 69
    :cond_3
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/GalleryPhotoShareFeatureProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setComponentEnabledSetting(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
