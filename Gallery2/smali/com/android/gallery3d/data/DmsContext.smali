.class public Lcom/android/gallery3d/data/DmsContext;
.super Ljava/lang/Object;
.source "DmsContext.java"

# interfaces
.implements Lcom/android/gallery3d/data/DmsClient$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DmsContext$ScannerClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsContext"


# instance fields
.field private mClient:Lcom/android/gallery3d/data/DmsClient;

.field private mContext:Landroid/content/Context;

.field private mScannerClient:Lcom/android/gallery3d/data/DmsContext$ScannerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsContext;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/gallery3d/data/DmsContext$ScannerClient;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/data/DmsContext$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mScannerClient:Lcom/android/gallery3d/data/DmsContext$ScannerClient;

    .line 73
    new-instance v0, Lcom/android/gallery3d/data/DmsClient;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DmsClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    .line 74
    return-void
.end method

.method private notifyDirty()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dms://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method


# virtual methods
.method public copyAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .parameter "deviceName"
    .parameter "albumName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, children:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, dest:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .end local v1           #dest:Ljava/io/File;
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, success:I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 118
    .local v0, child:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getSize()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v4, importedFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getId()I

    move-result v8

    invoke-virtual {v7, p1, v8, v5}, Lcom/android/gallery3d/data/DmsClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    iget-object v7, p0, Lcom/android/gallery3d/data/DmsContext;->mScannerClient:Lcom/android/gallery3d/data/DmsContext$ScannerClient;

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 127
    .end local v0           #child:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v4           #importedFile:Ljava/io/File;
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)Z
    .locals 7
    .parameter "deviceName"
    .parameter "objInfo"

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getSize()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, dest:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "Imported"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .end local v0           #dest:Ljava/io/File;
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 98
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, destPath:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getId()I

    move-result v3

    .line 100
    .local v3, objectId:I
    iget-object v4, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/gallery3d/data/DmsClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/android/gallery3d/data/DmsContext;->mScannerClient:Lcom/android/gallery3d/data/DmsContext$ScannerClient;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/DmsContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 102
    const/4 v4, 0x1

    .line 108
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #destPath:Ljava/lang/String;
    .end local v3           #objectId:I
    :goto_0
    return v4

    .line 105
    :cond_0
    const-string v4, "AirSharing_DmsContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No space to import "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public dirtyChanged()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "AirSharing_DmsContext"

    const-string v1, "notifyDirty when User Refearsh or Device/Media Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/android/gallery3d/data/DmsContext;->notifyDirty()V

    .line 134
    return-void
.end method

.method public getDmsClient()Lcom/android/gallery3d/data/DmsClient;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/DmsClient;->removeListener(Lcom/android/gallery3d/data/DmsClient$Listener;)V

    .line 78
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsContext;->mClient:Lcom/android/gallery3d/data/DmsClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/DmsClient;->addListener(Lcom/android/gallery3d/data/DmsClient$Listener;)V

    .line 82
    invoke-direct {p0}, Lcom/android/gallery3d/data/DmsContext;->notifyDirty()V

    .line 83
    return-void
.end method
