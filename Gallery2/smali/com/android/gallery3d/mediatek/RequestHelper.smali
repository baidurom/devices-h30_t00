.class public Lcom/android/gallery3d/mediatek/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 127
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "listener"

    .prologue
    .line 132
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "allowDefault"

    .prologue
    .line 137
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "allowDefault"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 142
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 143
    :cond_0
    const-string v2, "RequestHelper"

    const-string v3, "requestDataBundle:got null parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return-object v1

    .line 150
    :cond_2
    invoke-static {p4, p5}, Lcom/android/gallery3d/mediatek/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/android/gallery3d/mediatek/IMediaRequest;

    move-result-object v0

    .line 152
    .local v0, mediaRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run:mediaRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz v0, :cond_1

    .line 154
    instance-of v1, v0, Lcom/android/gallery3d/mediatek/MpoRequest;

    if-eqz v1, :cond_3

    if-eqz p6, :cond_3

    .line 155
    invoke-interface {v0, p6}, Lcom/android/gallery3d/mediatek/IMediaRequest;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 157
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1, p3}, Lcom/android/gallery3d/mediatek/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 1
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "filePath"
    .parameter "allowDefault"

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 49
    :cond_0
    const-string v3, "RequestHelper"

    const-string v4, "requestOriginalBitmap:got null parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    :goto_0
    return-object v2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    .local v1, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 65
    .local v0, mediaRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;
    invoke-static {p3}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1, p4}, Lcom/android/gallery3d/mediatek/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/android/gallery3d/mediatek/IMediaRequest;

    move-result-object v0

    .line 69
    const-string v3, "RequestHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run:mediaRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0, p1, p3}, Lcom/android/gallery3d/mediatek/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v2

    goto :goto_0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 83
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "listener"

    .prologue
    .line 88
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;Ljava/lang/String;ZLcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "allowDefault"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 93
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 94
    :cond_0
    const-string v2, "RequestHelper"

    const-string v3, "requestDataBundle:got null parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_0
    return-object v1

    .line 116
    :cond_2
    const/4 v0, 0x0

    .line 117
    .local v0, mediaRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;
    invoke-static {p3, p4}, Lcom/android/gallery3d/mediatek/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/android/gallery3d/mediatek/IMediaRequest;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    instance-of v1, v0, Lcom/android/gallery3d/mediatek/MpoRequest;

    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 120
    invoke-interface {v0, p5}, Lcom/android/gallery3d/mediatek/IMediaRequest;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 122
    :cond_3
    invoke-interface {v0, p0, p1, p2}, Lcom/android/gallery3d/mediatek/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v1

    goto :goto_0
.end method
