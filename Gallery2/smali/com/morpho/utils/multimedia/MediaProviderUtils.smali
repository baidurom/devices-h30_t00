.class public Lcom/morpho/utils/multimedia/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "rotation"
    .parameter "location"
    .parameter "storageUri"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    const/4 v5, 0x0

    .line 201
    :goto_0
    return-object v5

    .line 173
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, fileName:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 177
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 180
    .local v3, time:J
    if-eqz p3, :cond_2

    const/16 v5, 0x5a

    if-eq p3, v5, :cond_2

    const/16 v5, 0xb4

    if-eq p3, v5, :cond_2

    const/16 v5, 0x10e

    if-eq p3, v5, :cond_2

    .line 183
    const/4 p3, 0x0

    .line 186
    :cond_2
    const-string v5, "title"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v5, "_display_name"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "datetaken"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v5, "date_added"

    div-long v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v5, "date_modified"

    div-long v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v5, "mime_type"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v5, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v5, "_data"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    if-eqz p4, :cond_3

    .line 197
    const-string v5, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    const-string v5, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 201
    :cond_3
    invoke-virtual {p0, p5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "rotation"
    .parameter "location"

    .prologue
    .line 147
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "rotation"
    .parameter "location"

    .prologue
    .line 160
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/location/Location;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "duration"
    .parameter "storageUri"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 302
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 303
    :cond_0
    const/4 v5, 0x0

    .line 324
    :goto_0
    return-object v5

    .line 306
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, fileName:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 310
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 312
    .local v3, time:J
    const-string v5, "title"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v5, "_display_name"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v5, "datetaken"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    const-string v5, "date_added"

    div-long v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    const-string v5, "date_modified"

    div-long v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    const-string v5, "mime_type"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v5, "_data"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-lez v5, :cond_2

    .line 321
    const-string v5, "duration"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_2
    invoke-virtual {p0, p5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static addVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "duration"

    .prologue
    .line 280
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "filePath"
    .parameter "mime"
    .parameter "duration"

    .prologue
    .line 293
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "cr"
    .parameter "filePath"
    .parameter "storageUri"

    .prologue
    .line 236
    const/4 v7, -0x1

    .line 238
    .local v7, result:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 262
    .end local v7           #result:I
    .local v8, result:I
    :goto_0
    return v8

    .line 243
    .end local v8           #result:I
    .restart local v7       #result:I
    :cond_1
    const/4 v6, 0x0

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    if-eqz v6, :cond_2

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 256
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v9, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 262
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move v8, v7

    .end local v7           #result:I
    .restart local v8       #result:I
    goto :goto_0

    .end local v8           #result:I
    .restart local v7       #result:I
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static deleteImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 216
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 227
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "cr"
    .parameter "filePath"
    .parameter "storageUri"

    .prologue
    .line 359
    const/4 v7, -0x1

    .line 361
    .local v7, result:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 385
    .end local v7           #result:I
    .local v8, result:I
    :goto_0
    return v8

    .line 366
    .end local v8           #result:I
    .restart local v7       #result:I
    :cond_1
    const/4 v6, 0x0

    .line 368
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "title"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_2

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 377
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 379
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v9, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 385
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move v8, v7

    .end local v7           #result:I
    .restart local v8       #result:I
    goto :goto_0

    .end local v8           #result:I
    .restart local v7       #result:I
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static deleteVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 339
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 350
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "colunmName"

    .prologue
    const/4 v7, 0x0

    .line 110
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v7

    .line 114
    :cond_1
    const/4 v6, 0x0

    .line 116
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 129
    .local v7, filePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getExternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 38
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "filePath"
    .parameter "storageUri"

    .prologue
    const/4 v9, 0x0

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v9

    .line 77
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const/4 v7, 0x0

    .line 63
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, id:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, content:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6           #content:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getImageFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 91
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"
    .parameter "storageUri"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 422
    const/4 v10, 0x0

    .line 424
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 429
    const/4 p2, 0x1

    .line 432
    :cond_2
    const/4 v7, 0x0

    .line 434
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 440
    if-eqz v7, :cond_3

    .line 441
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 442
    .local v6, count:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 443
    .local v9, index:I
    new-array v11, v6, [I

    .line 445
    .local v11, videoIds:[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 447
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 450
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 452
    if-eqz v10, :cond_4

    .line 461
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #videoIds:[I
    :cond_3
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v10

    goto :goto_0

    .line 455
    .restart local v6       #count:I
    .restart local v8       #i:I
    .restart local v9       #index:I
    .restart local v11       #videoIds:[I
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 461
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #videoIds:[I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getImageThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 402
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 414
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "filePath"

    .prologue
    .line 47
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 100
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"
    .parameter "storageUri"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 498
    const/4 v10, 0x0

    .line 500
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 505
    const/4 p2, 0x1

    .line 508
    :cond_2
    const/4 v7, 0x0

    .line 510
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "title"

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 516
    if-eqz v7, :cond_3

    .line 517
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 518
    .local v6, count:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 519
    .local v9, index:I
    new-array v11, v6, [I

    .line 521
    .local v11, videoIds:[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 522
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 523
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 526
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 528
    if-eqz v10, :cond_4

    .line 537
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #videoIds:[I
    :cond_3
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v10

    goto :goto_0

    .line 531
    .restart local v6       #count:I
    .restart local v8       #i:I
    .restart local v9       #index:I
    .restart local v11       #videoIds:[I
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 537
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #videoIds:[I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getVideoThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 478
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 490
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
