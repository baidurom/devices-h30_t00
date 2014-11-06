.class public Lcom/android/gallery3d/util/SinaWeiboUtils;
.super Ljava/lang/Object;
.source "SinaWeiboUtils.java"


# static fields
.field private static final MAX_LENGTH_SINA_WEIBO:I = 0x640

.field private static final MAX_SCALE_SINA_WEIBO:I = 0x2

.field private static final SINA_WEIBO:Ljava/lang/String; = "com.sina.weibo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 118
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createBitmapWithNewSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "srcBitmap"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v5, 0x0

    .line 75
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    .local v2, newbm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .local v1, dst:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 79
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    return-object v2
.end method

.method public static processImageForSinaWeibo(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, mimeType:Ljava/lang/String;
    const-string v9, "com.sina.weibo"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 52
    .local v3, isSinaWeibo:Z
    if-eqz v3, :cond_0

    const-string v9, "image/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object p1

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 59
    .local v8, uri:Landroid/net/Uri;
    invoke-static {p0, v8}, Lcom/android/gallery3d/util/GalleryUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 61
    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, suffix:Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bm:Landroid/graphics/Bitmap;
    const/16 v9, 0x640

    const/4 v10, 0x2

    invoke-static {v0, v9, v10}, Lcom/android/gallery3d/util/SinaWeiboUtils;->resizeBitmapWithMaxLength(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 64
    .local v5, newBm:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->ensureExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/.cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, cacheFile:Ljava/io/File;
    invoke-static {v5, v1}, Lcom/android/gallery3d/util/SinaWeiboUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 66
    const-string v9, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static resizeBitmapWithMaxLength(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "maxScale"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 89
    .local v4, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 90
    .local v0, h:I
    move v3, v4

    .line 91
    .local v3, newW:I
    move v2, v0

    .line 92
    .local v2, newH:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v5, p1, :cond_0

    .line 93
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    div-int v5, v4, v0

    div-int v6, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v5, p2, :cond_0

    .line 94
    if-le v4, v0, :cond_1

    const/4 v1, 0x1

    .line 95
    .local v1, landscape:Z
    :goto_0
    if-eqz v1, :cond_2

    move v3, p1

    .line 96
    :goto_1
    if-eqz v1, :cond_3

    mul-int v5, v0, p1

    div-int v2, v5, v4

    .line 97
    :goto_2
    invoke-static {p0, v3, v2}, Lcom/android/gallery3d/util/SinaWeiboUtils;->createBitmapWithNewSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 100
    .end local v1           #landscape:Z
    .end local p0
    :cond_0
    return-object p0

    .line 94
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    .restart local v1       #landscape:Z
    :cond_2
    mul-int v5, v4, p1

    div-int v3, v5, v0

    goto :goto_1

    :cond_3
    move v2, p1

    .line 96
    goto :goto_2
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .parameter "srcBitmap"
    .parameter "cacheFile"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    invoke-static {v2}, Lcom/android/gallery3d/util/SinaWeiboUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 113
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-static {v1}, Lcom/android/gallery3d/util/SinaWeiboUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/util/SinaWeiboUtils;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 108
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method
