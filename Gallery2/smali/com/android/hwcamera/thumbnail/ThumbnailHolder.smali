.class public Lcom/android/hwcamera/thumbnail/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder;
    }
.end annotation


# static fields
.field private static final CLEAN_THUMBNAIL:I = 0x1

.field private static sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->cleanLastThumbnail()V

    return-void
.end method

.method private static declared-synchronized cleanLastThumbnail()V
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 5
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 56
    const-class v2, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    sget-object v0, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 59
    .local v0, t:Lcom/android/hwcamera/thumbnail/Thumbnail;
    const/4 v3, 0x0

    sput-object v3, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 60
    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    .end local v0           #t:Lcom/android/hwcamera/thumbnail/Thumbnail;
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized keep(Lcom/android/hwcamera/thumbnail/Thumbnail;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 73
    const-class v1, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 77
    :goto_0
    monitor-exit v1

    return-void

    .line 74
    :cond_0
    :try_start_0
    sput-object p0, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->sLastThumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;

    .line 75
    sget-object v0, Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    sget-object v0, Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
