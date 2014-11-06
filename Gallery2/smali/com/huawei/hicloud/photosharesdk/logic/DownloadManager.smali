.class public Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static volatile instance:Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;


# instance fields
.field private bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->instance:Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->instance:Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->instance:Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public cancelAllTask()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofMyPhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofMyPhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 110
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofSharePhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofSharePhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    return-void

    .line 113
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    .line 114
    .local v0, bitReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->cancelDownBitmap()V

    goto :goto_0
.end method

.method public cancelMyPhotoTask()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofMyPhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofMyPhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    return-void

    .line 122
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    .line 123
    .local v0, bitReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getIsMyPhoto()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->cancelDownBitmap()V

    goto :goto_0
.end method

.method public cancelSharePhotoTask()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofSharePhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->getDownQueueofSharePhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    return-void

    .line 133
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    .line 134
    .local v0, bitReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getIsMyPhoto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->cancelDownBitmap()V

    goto :goto_0
.end method

.method public downloadFile(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;Landroid/os/Handler;ZZLandroid/content/Context;)V
    .locals 6
    .parameter "downitem"
    .parameter "handler"
    .parameter "topPriotity"
    .parameter "isMyPhoto"
    .parameter "context"

    .prologue
    .line 60
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    invoke-direct {v0, p1, p3, p5, p4}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;ZLandroid/content/Context;Z)V

    .line 64
    .local v0, dfReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setHandler(Landroid/os/Handler;)V

    .line 65
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setFusionCode(I)V

    .line 66
    iget-object v2, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-wide v2, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    iget-wide v3, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->startDownload(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    .end local v0           #dfReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0       #dfReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;
    :cond_1
    iget-object v2, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->initDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadFile(Ljava/util/ArrayList;Landroid/os/Handler;ZZLandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "handler"
    .parameter "topPriotity"
    .parameter "isMyPhoto"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;",
            ">;",
            "Landroid/os/Handler;",
            "ZZ",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, downList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    return-void

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 42
    .local v2, item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download item dbankpath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/io/File;

    iget-object v4, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    invoke-direct {v0, v2, p3, p5, p4}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;ZLandroid/content/Context;Z)V

    .line 47
    .local v0, dfReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setHandler(Landroid/os/Handler;)V

    .line 48
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setFusionCode(I)V

    .line 49
    iget-object v4, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-wide v4, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 50
    iget-object v4, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    iget-wide v5, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->startDownload(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v4, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->initDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadThumbFile(Ljava/util/ArrayList;Landroid/os/Handler;ZZLandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "handler"
    .parameter "topPriotity"
    .parameter "isMyPhoto"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;",
            ">;",
            "Landroid/os/Handler;",
            "ZZ",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, downList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    return-void

    .line 77
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 78
    .local v2, fileItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    iget-object v3, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 79
    .local v3, savePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v6, "_thumb"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;-><init>(Landroid/os/Handler;ZZLandroid/content/Context;)V

    .line 87
    .local v0, bitmapReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->setHandler(Landroid/os/Handler;)V

    .line 88
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->initDownBitmap(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V

    .line 89
    const/16 v6, 0x10e

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->setFusionCode(I)V

    .line 90
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->bitMapReqList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getThumbUrl(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4
    .parameter "downList"
    .parameter "isMyPhoto"
    .parameter "context"

    .prologue
    .line 96
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "DownLoadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;-><init>(ZLandroid/content/Context;)V

    .line 100
    .local v0, mrir:Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->setFileInfo(Ljava/lang/String;)V

    .line 101
    invoke-static {p3}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->setWidth(I)V

    .line 102
    invoke-static {p3}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->setHeight(I)V

    .line 103
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 104
    return-void
.end method
