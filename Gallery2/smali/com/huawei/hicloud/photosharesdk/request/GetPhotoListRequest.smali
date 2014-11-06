.class public Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "GetPhotoListRequest.java"


# instance fields
.field private folderPath:Ljava/lang/String;

.field private taskId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 30
    const-string v0, "/"

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->taskId:I

    .line 40
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 113
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 114
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 115
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 116
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 117
    const-string v3, "fields"

    .line 118
    const-string v4, "[\"size\", \"createTime\", \"modifyTime\", \"url\",\"fileCount\", \"dirCount\", \"md5\"]"

    .line 116
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    const-string v4, "nsp.vfs.lsdir"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 122
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 121
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 126
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 125
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    const-string v1, "/Photoshare/myphoto/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 14
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x102

    const/4 v12, 0x1

    .line 64
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v8, :cond_0

    .line 65
    const-string v8, "GetPhotoListRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "folderPath:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 66
    const-string v10, " json:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    const-string v8, "childList"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 69
    const-string v8, "childList"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 70
    .local v6, newAppArray:Lorg/json/JSONArray;
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v8, :cond_1

    .line 71
    const-string v8, "newAppArray"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file nums="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";taskID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 73
    .local v4, length:I
    const/4 v1, 0x0

    .line 74
    .local v1, fileInfo:Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v7, pathList:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 94
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 96
    const/4 v10, 0x0

    iget v11, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->taskId:I

    .line 94
    invoke-virtual {v9, v13, v10, v11, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    move-result-object v8

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->getIsMyPhoto()Z

    move-result v10

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {v8, v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->getThumbUrl(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 105
    .end local v1           #fileInfo:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v6           #newAppArray:Lorg/json/JSONArray;
    .end local v7           #pathList:Lorg/json/JSONArray;
    :goto_1
    return v12

    .line 76
    .restart local v1       #fileInfo:Lorg/json/JSONObject;
    .restart local v3       #i:I
    .restart local v4       #length:I
    .restart local v6       #newAppArray:Lorg/json/JSONArray;
    .restart local v7       #pathList:Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;-><init>()V

    .line 79
    .local v2, fp:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 80
    const-string v9, "name"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, dbankPath:Ljava/lang/String;
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 86
    const-string v8, "createTime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 87
    const-string v8, "size"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoSize(Ljava/lang/Long;)V

    .line 88
    const-string v8, "md5"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setMd5(Ljava/lang/String;)V

    .line 89
    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoUrl(Ljava/lang/String;)V

    .line 90
    const-string v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setFileName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0           #dbankPath:Ljava/lang/String;
    .end local v2           #fp:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 100
    .end local v1           #fileInfo:Lorg/json/JSONObject;
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v6           #newAppArray:Lorg/json/JSONArray;
    .end local v7           #pathList:Lorg/json/JSONArray;
    :cond_4
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 102
    iget v10, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->taskId:I

    .line 100
    invoke-virtual {v9, v13, v12, v10, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public setFolderPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->folderPath:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 50
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/GetPhotoListRequest;->taskId:I

    .line 51
    return-void
.end method
