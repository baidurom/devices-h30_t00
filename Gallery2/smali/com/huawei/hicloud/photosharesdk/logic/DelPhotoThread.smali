.class Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;
.super Ljava/lang/Thread;
.source "PhotoImpl.java"


# instance fields
.field context:Landroid/content/Context;

.field isMyPhotoStream:Z

.field pList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "isMyPhotoStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1023
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->context:Landroid/content/Context;

    .line 1025
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->pList:Ljava/util/ArrayList;

    .line 1026
    iput-boolean p3, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->isMyPhotoStream:Z

    .line 1027
    return-void
.end method

.method private delFromFolderPhoto(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1065
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    const-string v2, ""

    .line 1067
    .local v2, folderDbankPath:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1068
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1082
    :cond_0
    :try_start_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1083
    .local v0, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delPhoto(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v0           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :goto_1
    iget-boolean v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->isMyPhotoStream:Z

    if-eqz v6, :cond_2

    .line 1090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1090
    invoke-static {p1, v6, v9, v10}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1096
    :goto_2
    return-void

    .line 1071
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 1073
    .local v5, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;-><init>()V

    .line 1074
    .local v3, folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1084
    .end local v3           #folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    .end local v5           #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    :catch_0
    move-exception v1

    .line 1085
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "delFromFolderPhoto"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1086
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1093
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1093
    invoke-static {p1, v6, v10, v10}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2
.end method

.method private delPhotoFromCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    return-void

    .line 1049
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 1051
    .local v0, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLabbrPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/lang/String;)Z

    .line 1052
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getLrealPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1031
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1034
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->pList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->delPhotoFromCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1037
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->pList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->delFromFolderPhoto(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1038
    return-void
.end method
