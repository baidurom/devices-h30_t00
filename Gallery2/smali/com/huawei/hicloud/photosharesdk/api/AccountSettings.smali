.class public Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# static fields
.field private static final FAILED_CODE:I = 0x1

.field private static final SUCCESS_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AccountSettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method private static clearLocalData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 129
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    const-string v4, "come into clearLocalData"

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, dbFuncInterface:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    invoke-interface {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->deleteDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #dbFuncInterface:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    :goto_0
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v2, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->clearAllLocalFiles()Z

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AccountSettings"

    const-string v3, "logOnSetting"

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLogOnInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static logOffSetting(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "AccountSettings"

    const-string v2, "logOffSetting start"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-static {v3, p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->writeIsLogOnToFile(ZLandroid/content/Context;)V

    .line 162
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->closePhotoStream(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->stopSync()V

    .line 166
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->cancelAllTask()V

    .line 170
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->unRegisterToken(Landroid/content/Context;)V

    .line 174
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "AccountSettings"

    const-string v2, "logOffSetting clearLocalData start"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->clearLocalData(Landroid/content/Context;)V

    .line 184
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "AccountSettings"

    const-string v2, "logOffSetting clearLocalData end"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    .line 190
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_3

    .line 191
    const-string v1, "AccountSettings"

    const-string v2, "logOffSetting end"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_3
    return v3

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logOnAuto(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 214
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, hicloudObserver:Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;->getLoginMessage()I

    move-result v1

    return v1
.end method

.method public static logOnSetting(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;)I
    .locals 6
    .parameter "context"
    .parameter "accountInfo"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 67
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "logOnSetting = "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    if-nez p1, :cond_2

    move v1, v2

    .line 119
    :goto_1
    return v1

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {p0, v3}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->writeFlagToFile(Landroid/content/Context;Z)V

    .line 90
    invoke-static {p1, p0}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->updateAccountInfo(Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;Landroid/content/Context;)V

    .line 92
    invoke-static {v2, p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->writeIsLogOnToFile(ZLandroid/content/Context;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeTimeLineToFile(Landroid/content/Context;J)V

    .line 109
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/AuthToGetParamsRequest;

    new-instance v1, Lcom/huawei/hicloud/photosharesdk/api/MyHandler;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/api/MyHandler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/huawei/hicloud/photosharesdk/request/AuthToGetParamsRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 110
    .local v0, agpr:Lcom/huawei/hicloud/photosharesdk/request/AuthToGetParamsRequest;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/AuthToGetParamsRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 112
    invoke-static {p0}, Lcom/huawei/android/pushagent/PushReceiver;->getToken(Landroid/content/Context;)V

    .line 115
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_3

    .line 116
    const-string v1, "AccountSettings"

    const-string v2, "logOnSetting end "

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v1, v3

    .line 119
    goto :goto_1
.end method
