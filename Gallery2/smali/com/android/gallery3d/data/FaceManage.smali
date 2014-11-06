.class public Lcom/android/gallery3d/data/FaceManage;
.super Ljava/lang/Object;
.source "FaceManage.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final INDEX_BOTTOM:I = 0x5

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IMAGE_ID:I = 0x1

.field private static final INDEX_LEFT:I = 0x2

.field private static final INDEX_PERSONID:I = 0x6

.field private static final INDEX_RIGHT:I = 0x4

.field private static final INDEX_SIMILAR1:I = 0x7

.field private static final INDEX_SIMILAR2:I = 0x8

.field private static final INDEX_SIMILAR3:I = 0x9

.field private static final INDEX_SIMILARS:[I = null

.field private static final INDEX_TOP:I = 0x3

.field private static final PARAMETER_BLOCKING:Ljava/lang/String; = "blocking"

.field private static final PARAMETER_CANCEL:Ljava/lang/String; = "cancel"

.field private static final PARAMETER_IMAGEID:Ljava/lang/String; = "orig_id"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION_IMAGEID:Ljava/lang/String; = "image_id=?"

.field private static final SELECTION_PERSONID:Ljava/lang/String; = "person_id=?"

.field private static final SELECTION_SIMILAR:Ljava/lang/String; = "person_id IS NULL AND similar1 = ?"

.field private static final SELECTION_SIMILAR1:Ljava/lang/String; = "similar1 = ?"

.field private static final SELECTION_SIMILAR2:Ljava/lang/String; = "similar2 = ?"

.field private static final SELECTION_SIMILAR3:Ljava/lang/String; = "similar3 = ?"

.field private static final TAG:Ljava/lang/String; = "FaceManage"

.field private static sInstance:Lcom/android/gallery3d/data/FaceManage;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "left"

    aput-object v2, v0, v1

    const-string v1, "top"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "right"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "similar1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "similar2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "similar3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/data/FaceManage;->INDEX_SIMILARS:[I

    .line 38
    sget-object v0, Lcom/android/gallery3d/data/FaceStore$Images$Faces;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 60
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->sInstance:Lcom/android/gallery3d/data/FaceManage;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/gallery3d/data/FaceManage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/FaceManage;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/gallery3d/data/FaceManage;->sInstance:Lcom/android/gallery3d/data/FaceManage;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->sInstance:Lcom/android/gallery3d/data/FaceManage;

    return-object v0
.end method


# virtual methods
.method public anotherFaceAttached(II)Z
    .locals 11
    .parameter "personId"
    .parameter "faceId"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 174
    const/4 v6, 0x0

    .line 176
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_2

    .line 191
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    :goto_0
    return v0

    .line 179
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-ge v8, v0, :cond_4

    .line 191
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 182
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eq p2, v0, :cond_6

    .line 191
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v9

    goto :goto_0

    .line 188
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v9

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public attachPerson(II)V
    .locals 5
    .parameter "faceId"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 146
    .local v0, FaceIdUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public dettachPerson(I)V
    .locals 5
    .parameter "faceId"

    .prologue
    const/4 v4, 0x0

    .line 150
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 155
    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, faceIdUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public getFaceInfo(IZ)[Lcom/android/gallery3d/data/FaceInfo;
    .locals 13
    .parameter "imageId"
    .parameter "scanImage"

    .prologue
    const/4 v0, 0x1

    const/4 v12, 0x0

    .line 81
    const/4 v8, 0x0

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    if-ne v0, p2, :cond_2

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "blocking"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "blocking"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_3

    .line 107
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v11, v12

    :cond_1
    :goto_1
    return-object v11

    .line 89
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const-string v5, "image_id=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 96
    :cond_3
    const/4 v10, 0x0

    .line 97
    .local v10, faceIndex:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [Lcom/android/gallery3d/data/FaceInfo;

    .line 98
    .local v11, nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/data/FaceManage;->getFaceInfoFromCursor(Landroid/database/Cursor;)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v0

    aput-object v0, v11, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 107
    :cond_4
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 103
    .end local v10           #faceIndex:I
    .end local v11           #nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    :catch_0
    move-exception v9

    .line 104
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FaceManage"

    const-string v2, "getFaceInfo Exception"

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v11, v12

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getFaceInfoFromCursor(Landroid/database/Cursor;)Lcom/android/gallery3d/data/FaceInfo;
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    .line 67
    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v4, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 70
    .local v3, personId:I
    const/4 v2, 0x0

    .line 71
    .local v2, attached:Z
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 73
    const/4 v2, 0x1

    .line 77
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/gallery3d/data/FaceInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/FaceInfo;-><init>(IZILandroid/graphics/Rect;I)V

    return-object v0

    .line 74
    :cond_1
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0
.end method

.method public getSimilarS(I)[I
    .locals 12
    .parameter "faceId"

    .prologue
    const/4 v11, 0x0

    .line 112
    const/4 v6, 0x0

    .line 114
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    const/4 v10, 0x0

    .line 118
    .local v10, nSimilarNum:I
    const/4 v10, 0x0

    :goto_0
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->INDEX_SIMILARS:[I

    array-length v0, v0

    if-ge v10, v0, :cond_0

    .line 119
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->INDEX_SIMILARS:[I

    aget v0, v0, v10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_3

    .line 123
    :cond_0
    if-gtz v10, :cond_4

    .line 138
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v11

    .end local v1           #uri:Landroid/net/Uri;
    .end local v10           #nSimilarNum:I
    :cond_2
    :goto_1
    return-object v9

    .line 118
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v10       #nSimilarNum:I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 127
    :cond_4
    :try_start_1
    new-array v9, v10, [I

    .line 128
    .local v9, nSimilarIds:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v10, :cond_5

    .line 129
    sget-object v0, Lcom/android/gallery3d/data/FaceManage;->INDEX_SIMILARS:[I

    aget v0, v0, v8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 138
    :cond_5
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #i:I
    .end local v9           #nSimilarIds:[I
    .end local v10           #nSimilarNum:I
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v11

    goto :goto_1

    .line 134
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 135
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FaceManage"

    const-string v2, "getSimilarS Exception"

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v9, v11

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public resetPersonId(I)V
    .locals 7
    .parameter "personId"

    .prologue
    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 168
    sget-object v1, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public updateSimilar1(II)V
    .locals 7
    .parameter "similarPerson"
    .parameter "personId"

    .prologue
    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/gallery3d/data/FaceManage;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    iget-object v1, p0, Lcom/android/gallery3d/data/FaceManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/FaceManage;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person_id IS NULL AND similar1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    return-void
.end method
