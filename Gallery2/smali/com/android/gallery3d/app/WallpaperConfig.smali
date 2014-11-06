.class public Lcom/android/gallery3d/app/WallpaperConfig;
.super Ljava/lang/Object;
.source "WallpaperConfig.java"


# static fields
.field private static final FIXED_FALSE:Ljava/lang/String; = "false"

.field private static final FIXED_TRUE:Ljava/lang/String; = "true"

.field private static final IS_FIXED:Ljava/lang/String; = "is_wallpaper_fixed"

.field private static final LEFT_POSITION:Ljava/lang/String; = "wallpaper_left_position"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final POSITION_VALUE_LEFT:Ljava/lang/String; = "0"

.field private static final POSITION_VALUE_RIGHT:Ljava/lang/String; = "0.5"

.field private static final RIGHT_POSITION:Ljava/lang/String; = "wallpaper_right_position"

.field private static final TAG:Ljava/lang/String; = "WallpaperConfig"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_BOOL:I = 0x3

.field private static final TYPE_FLOAT:I = 0x2

.field private static final TYPE_INT:I = 0x1

.field private static final TYPE_STRING:I = 0x0

.field private static final URI:Landroid/net/Uri; = null

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://com.huawei.android.thememanager.ContentProvider/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/WallpaperConfig;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWallpaperConfig(Landroid/content/Context;Z)Z
    .locals 7
    .parameter "context"
    .parameter "fixed"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    const-string v4, "is_wallpaper_fixed"

    if-eqz p1, :cond_0

    const-string v1, "true"

    :goto_0
    const/4 v5, 0x3

    invoke-static {p0, v4, v1, v5}, Lcom/android/gallery3d/app/WallpaperConfig;->updateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 72
    .local v0, result:Z
    if-eqz v0, :cond_1

    const-string v1, "wallpaper_left_position"

    const-string v4, "0"

    invoke-static {p0, v1, v4, v6}, Lcom/android/gallery3d/app/WallpaperConfig;->updateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 73
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "wallpaper_right_position"

    const-string v4, "0.5"

    invoke-static {p0, v1, v4, v6}, Lcom/android/gallery3d/app/WallpaperConfig;->updateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 74
    :goto_2
    return v0

    .line 71
    .end local v0           #result:Z
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .restart local v0       #result:Z
    :cond_1
    move v0, v3

    .line 72
    goto :goto_1

    :cond_2
    move v0, v3

    .line 73
    goto :goto_2
.end method

.method private static updateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 35
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v9

    .line 66
    :goto_0
    return v1

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, conResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    move v1, v9

    goto :goto_0

    .line 40
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v6, conValues:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v6, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "value"

    invoke-virtual {v6, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 48
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/app/WallpaperConfig;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 49
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 50
    :cond_3
    sget-object v1, Lcom/android/gallery3d/app/WallpaperConfig;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    if-eqz v7, :cond_4

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    sget-object v1, Lcom/android/gallery3d/app/WallpaperConfig;->URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v8

    .line 59
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WallpaperConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateItem Exception name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    if-eqz v7, :cond_6

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v1, v9

    goto/16 :goto_0

    .line 56
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    sget-object v1, Lcom/android/gallery3d/app/WallpaperConfig;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_8

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method
