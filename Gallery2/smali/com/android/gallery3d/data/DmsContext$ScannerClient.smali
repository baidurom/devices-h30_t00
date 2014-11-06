.class final Lcom/android/gallery3d/data/DmsContext$ScannerClient;
.super Ljava/lang/Object;
.source "DmsContext.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DmsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScannerClient"
.end annotation


# instance fields
.field mConnected:Z

.field mLock:Ljava/lang/Object;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 39
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 5

    .prologue
    .line 54
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mConnected:Z

    .line 56
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 60
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 67
    return-void
.end method

.method public scanPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mConnected:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    monitor-exit v1

    .line 50
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method