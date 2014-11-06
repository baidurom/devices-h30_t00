.class public Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;
.super Ljava/lang/Object;
.source "UploadItem.java"


# instance fields
.field public createTime:Ljava/lang/String;

.field public fileLocalPath:Ljava/lang/String;

.field public fileMD5:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public mTashHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

.field public upToDbankPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileMD5:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileSize:J

    return-wide v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileSize:J

    return-wide v0
.end method

.method public getUpPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->upToDbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUpToDbankPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->upToDbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmTashHandle()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->mTashHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->createTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFileLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileLocalPath:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setFileMD5(Ljava/lang/String;)V
    .locals 0
    .parameter "fileMD5"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileMD5:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileSize:J

    .line 152
    return-void
.end method

.method public final setLength(J)V
    .locals 0
    .parameter "length"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->fileSize:J

    .line 120
    return-void
.end method

.method public setUpPath(Ljava/lang/String;)V
    .locals 0
    .parameter "upPath"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->upToDbankPath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUpToDbankPath(Ljava/lang/String;)V
    .locals 0
    .parameter "upToDbankPath"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->upToDbankPath:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setmTashHandle(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;)V
    .locals 0
    .parameter "mTashHandle"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/UploadItem;->mTashHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 128
    return-void
.end method
