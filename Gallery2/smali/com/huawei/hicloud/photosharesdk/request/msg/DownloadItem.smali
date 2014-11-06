.class public Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# instance fields
.field public dbankPath:Ljava/lang/String;

.field public fileMD5:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public fileUrl:Ljava/lang/String;

.field public savePath:Ljava/lang/String;

.field protected taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileName:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileMD5:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    .line 16
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 5
    return-void
.end method


# virtual methods
.method public getDbankPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskhandle()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    return-object v0
.end method

.method public setDbankPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dbankPath"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFileMD5(Ljava/lang/String;)V
    .locals 0
    .parameter "fileMD5"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileMD5:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    .line 68
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fileUrl"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .parameter "savePath"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTaskhandle(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;)V
    .locals 0
    .parameter "taskhandle"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "DownloadItem [fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", savePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dbankPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileMD5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileMD5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
