.class Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;
.source "CameraScanner.java"


# static fields
.field private static final SCAN_TIME_LIMIT:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "CameraScanner"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;-><init>(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private images2TaskInfos(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, images:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v4, taskInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    return-object v4

    .line 88
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;

    .line 91
    .local v1, imageEntity:Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 94
    :cond_1
    const-string v6, "CameraScanner"

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file not exit or 0 size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->getImageDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getNewNameForScan(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, newNameFile:Ljava/lang/String;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 116
    .local v3, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->getImageDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCreateTime(Ljava/lang/String;)V

    .line 117
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCurrentStage(I)V

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setOperationType(I)V

    .line 119
    invoke-virtual {v3, v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathLocal(Ljava/lang/String;)V

    .line 122
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processScanedData(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, taskInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "CameraScanner"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    move-result-object v0

    .line 134
    .local v0, myPhotoStreamLogic:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->addTaskInfoFromCamera(Landroid/content/Context;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method private scan(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x927c0

    .line 139
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->readTimeLineFromFile(Landroid/content/Context;)J

    move-result-wide v3

    .line 141
    .local v3, timeLine:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 143
    .local v1, sysTime:J
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 145
    sub-long v3, v1, v6

    .line 147
    invoke-static {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeTimeLineToFile(Landroid/content/Context;J)V

    .line 150
    :cond_0
    add-long/2addr v1, v6

    .line 153
    const-string v5, "datetaken >= ? and datetaken < ?"

    .line 155
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 152
    invoke-static {p1, v5, v6}, Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;->getCameraEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, images:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;>;"
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_1

    .line 158
    const-string v5, "CameraScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "time line: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "CameraScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "system time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "CameraScanner"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;->scan(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, images:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;->images2TaskInfos(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 77
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-direct {p0, v0, v2}, Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;->processScanedData(Landroid/content/Context;Ljava/util/List;)V

    .line 82
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
