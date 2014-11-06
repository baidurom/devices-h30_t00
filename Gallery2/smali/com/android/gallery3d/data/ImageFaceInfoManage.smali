.class public Lcom/android/gallery3d/data/ImageFaceInfoManage;
.super Ljava/lang/Object;
.source "ImageFaceInfoManage.java"


# static fields
.field private static final CLUSTERPROJECTION:[Ljava/lang/String; = null

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final IMAGEORDER:Ljava/lang/String; = "image_id DESC"

.field private static final INDEX_BOTTOM:I = 0x5

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IMAGE_ID:I = 0x1

.field private static final INDEX_LEFT:I = 0x2

.field private static final INDEX_PERSONID:I = 0x6

.field private static final INDEX_RIGHT:I = 0x4

.field private static final INDEX_SIMILAR1:I = 0x7

.field private static final INDEX_TOP:I = 0x3

.field private static final PERSONORDER:Ljava/lang/String; = "IFNULL(person_id,similar1) DESC"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION_PERSONID:Ljava/lang/String; = "person_id=?"

.field private static final SELECTION_SIMILAR1:Ljava/lang/String; = "person_id IS NULL AND similar1 = ?"

.field private static final SELECTION_TAGGED:Ljava/lang/String; = "person_id IS NOT NULL OR similar1 IS NOT NULL"

.field private static final SELECTION_UNTAGGED:Ljava/lang/String; = "image_id NOT IN (SELECT image_id FROM faces WHERE person_id IS NOT NULL OR similar1 IS NOT NULL)"

.field private static final TAG:Ljava/lang/String; = "ImageFaceInfoManage"

.field private static sInstance:Lcom/android/gallery3d/data/ImageFaceInfoManage;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "image_id"

    aput-object v1, v0, v4

    const-string v1, "left"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "top"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->PROJECTION:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "IFNULL(person_id,similar1) AS person_id"

    aput-object v1, v0, v3

    const-string v1, "image_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CLUSTERPROJECTION:[Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/gallery3d/data/FaceStore$Images$Faces;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private clusterTagged(Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
            ">;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, existing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;>;"
    .local p2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;>;"
    const/4 v8, 0x0

    .line 143
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CLUSTERPROJECTION:[Ljava/lang/String;

    const-string v4, "person_id IS NOT NULL OR similar1 IS NOT NULL"

    const/4 v5, 0x0

    const-string v6, "IFNULL(person_id,similar1) DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 144
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 146
    .local v14, personId:I
    sget-object v1, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 147
    .local v11, imagePath:Lcom/android/gallery3d/data/Path;
    const/4 v13, 0x0

    .line 148
    .local v13, itemToAdd:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    .line 149
    .local v12, item:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    iget-object v1, v12, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v11, :cond_1

    .line 150
    move-object v13, v12

    .line 154
    .end local v12           #item:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    :cond_2
    if-eqz v13, :cond_0

    .line 155
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    .line 156
    .local v7, cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    if-nez v7, :cond_3

    .line 157
    new-instance v7, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    .end local v7           #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    invoke-direct {v7, v14}, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;-><init>(I)V

    .line 158
    .restart local v7       #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3
    invoke-virtual {v7, v13}, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->add(Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v7           #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #imagePath:Lcom/android/gallery3d/data/Path;
    .end local v13           #itemToAdd:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    .end local v14           #personId:I
    :catch_0
    move-exception v9

    .line 164
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ImageFaceInfoManage"

    const-string v2, "clusterTagged Exception"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v9           #e:Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void

    .line 167
    :cond_5
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private clusterUntagged(Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
            ">;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, existing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;>;"
    .local p2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;>;"
    const/4 v7, 0x0

    .line 174
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image_id"

    aput-object v4, v2, v3

    const-string v3, "image_id NOT IN (SELECT image_id FROM faces WHERE person_id IS NOT NULL OR similar1 IS NOT NULL)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 177
    .local v10, imagePath:Lcom/android/gallery3d/data/Path;
    const/4 v12, 0x0

    .line 178
    .local v12, itemToAdd:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    .line 179
    .local v11, item:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    iget-object v0, v11, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    if-ne v0, v10, :cond_1

    .line 180
    move-object v12, v11

    .line 184
    .end local v11           #item:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    :cond_2
    if-eqz v12, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    .line 186
    .local v6, cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    if-nez v6, :cond_3

    .line 187
    new-instance v6, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    .end local v6           #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;-><init>(I)V

    .line 188
    .restart local v6       #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3
    invoke-virtual {v6, v12}, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->add(Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v6           #cluster:Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #imagePath:Lcom/android/gallery3d/data/Path;
    .end local v12           #itemToAdd:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    :catch_0
    move-exception v8

    .line 194
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageFaceInfoManage"

    const-string v1, "clusterUntagged Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void

    .line 197
    :cond_5
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ImageFaceInfoManage;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 56
    sget-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->sInstance:Lcom/android/gallery3d/data/ImageFaceInfoManage;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ImageFaceInfoManage;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->sInstance:Lcom/android/gallery3d/data/ImageFaceInfoManage;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->sInstance:Lcom/android/gallery3d/data/ImageFaceInfoManage;

    return-object v0
.end method

.method private resetPerson(IZ)V
    .locals 11
    .parameter "personId"
    .parameter "attached"

    .prologue
    const/4 v0, 0x1

    .line 81
    const/4 v6, 0x0

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    if-ne v0, p2, :cond_2

    :try_start_0
    const-string v3, "person_id=?"

    .line 84
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/ImageFaceInfoManage;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 87
    .local v9, localImagePath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/LocalImage;

    .line 88
    .local v8, image:Lcom/android/gallery3d/data/LocalImage;
    if-eqz v8, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/gallery3d/data/LocalImage;->updateAttached(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #image:Lcom/android/gallery3d/data/LocalImage;
    .end local v9           #localImagePath:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v7

    .line 93
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageFaceInfoManage"

    const-string v1, "resetPerson Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 83
    :cond_2
    :try_start_2
    const-string v3, "person_id IS NULL AND similar1 = ?"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 95
    .restart local v3       #selection:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v3           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private setLocalImageFaceInfo(ILjava/util/ArrayList;)V
    .locals 5
    .parameter "imageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/FaceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, faceInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FaceInfo;>;"
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 107
    .local v2, localImagePath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .line 108
    .local v1, image:Lcom/android/gallery3d/data/LocalImage;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/gallery3d/data/FaceInfo;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/gallery3d/data/FaceInfo;

    check-cast v3, [Lcom/android/gallery3d/data/FaceInfo;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/LocalImage;->setFaceInfos([Lcom/android/gallery3d/data/FaceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1           #image:Lcom/android/gallery3d/data/LocalImage;
    .end local v2           #localImagePath:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageFaceInfoManage"

    const-string v4, "setLocalImageFaceInfo Exception"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clusterImageFaceInfo(Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
            ">;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, existing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;>;"
    .local p2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->clusterTagged(Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->clusterUntagged(Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    .line 204
    return-void
.end method

.method public resetPersonS(I)V
    .locals 1
    .parameter "personId"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->resetPerson(IZ)V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->resetPerson(IZ)V

    .line 102
    return-void
.end method

.method public setAllImageFaceInfoHaveScan()V
    .locals 10

    .prologue
    .line 115
    const/4 v6, 0x0

    .line 117
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "ImageFaceInfoManage"

    const-string v1, "setAllImageFaceInfoHaveScan start"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, imageId:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v8, faceInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FaceInfo;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/ImageFaceInfoManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "image_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    const-string v0, "ImageFaceInfoManage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllImageFaceInfoHaveScan cursor.getCount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v9, v0, :cond_0

    .line 124
    invoke-direct {p0, v9, v8}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->setLocalImageFaceInfo(ILjava/util/ArrayList;)V

    .line 125
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/data/FaceManage;->getFaceInfoFromCursor(Landroid/database/Cursor;)Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v8           #faceInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FaceInfo;>;"
    .end local v9           #imageId:I
    :catch_0
    move-exception v7

    .line 133
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageFaceInfoManage"

    const-string v1, "setAllImageFaceInfoHaveScan Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 130
    .restart local v8       #faceInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FaceInfo;>;"
    .restart local v9       #imageId:I
    :cond_2
    :try_start_2
    invoke-direct {p0, v9, v8}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->setLocalImageFaceInfo(ILjava/util/ArrayList;)V

    .line 131
    const-string v0, "ImageFaceInfoManage"

    const-string v1, "setAllImageFaceInfoHaveScan end"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #faceInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FaceInfo;>;"
    .end local v9           #imageId:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public updateSimilarPerson(II)V
    .locals 11
    .parameter "similarPersonId"
    .parameter "personId"

    .prologue
    .line 63
    const/4 v6, 0x0

    .line 65
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageFaceInfoManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/ImageFaceInfoManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/ImageFaceInfoManage;->PROJECTION:[Ljava/lang/String;

    const-string v3, "person_id IS NULL AND similar1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 68
    .local v9, localImagePath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/LocalImage;

    .line 69
    .local v8, image:Lcom/android/gallery3d/data/LocalImage;
    if-eqz v8, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0, p2}, Lcom/android/gallery3d/data/LocalImage;->updatePerson(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v8           #image:Lcom/android/gallery3d/data/LocalImage;
    .end local v9           #localImagePath:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v7

    .line 76
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 76
    :cond_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
