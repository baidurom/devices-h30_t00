.class public Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountHelper"

.field private static volatile accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

.field private static volatile authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAccountData(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->clearAccountDataInFile(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->destory()V

    .line 182
    return-void
.end method

.method private static clearAccountInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAccountName(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceID(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceIDType(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceType(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setServiceToken(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setSiteID(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setUserID(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAuthType(Ljava/lang/String;)V

    .line 139
    sput-object v1, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    .line 141
    :cond_0
    return-void
.end method

.method private static clearAuthInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSid(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSecret(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setClientId(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_num(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_exp(Ljava/lang/String;)V

    .line 157
    sput-object v1, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    .line 159
    :cond_0
    return-void
.end method

.method public static destory()V
    .locals 0

    .prologue
    .line 168
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->clearAccountInfo()V

    .line 169
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->clearAuthInfo()V

    .line 170
    return-void
.end method

.method public static generateMsgHead(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 186
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    .line 187
    .local v0, accInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 188
    const-string v6, "AccountHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "context:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",AccountInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 190
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 192
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 193
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, msgHead:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAuthType()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, authType:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getSiteID()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, siteId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 198
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    .line 201
    .local v1, arrStr:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    const-string v8, "utf-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    .line 202
    const/4 v8, 0x1

    if-nez v2, :cond_1

    move-object v6, v7

    :goto_0
    aput-object v6, v1, v8

    .line 203
    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 215
    .end local v1           #arrStr:[Ljava/lang/String;
    .end local v2           #authType:Ljava/lang/String;
    .end local v4           #msgHead:Ljava/lang/String;
    .end local v5           #siteId:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 202
    .restart local v1       #arrStr:[Ljava/lang/String;
    .restart local v2       #authType:Ljava/lang/String;
    .restart local v4       #msgHead:Ljava/lang/String;
    .restart local v5       #siteId:Ljava/lang/String;
    :cond_1
    const-string v6, "utf-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 205
    :catch_0
    move-exception v3

    .line 208
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "AccountHelper"

    invoke-static {v6, v7, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    .line 211
    new-array v1, v10, [Ljava/lang/String;

    goto :goto_1

    .line 214
    .end local v1           #arrStr:[Ljava/lang/String;
    .end local v2           #authType:Ljava/lang/String;
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #msgHead:Ljava/lang/String;
    .end local v5           #siteId:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 215
    new-array v1, v10, [Ljava/lang/String;

    goto :goto_1
.end method

.method public static getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    if-eqz p0, :cond_2

    .line 60
    const-class v1, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readAccountInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_2
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const-class v1, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readAuthInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    .line 82
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static updateAccountInfo(Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "accountInfo"
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->clearAccountData(Landroid/content/Context;)V

    .line 103
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->writeAccountInfoToFile(Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static updateAuthInfo(Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "authInfo"
    .parameter "context"

    .prologue
    .line 117
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->clearAuthInfo()V

    .line 118
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->writeAuthInfoToFile(Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;Landroid/content/Context;)V

    .line 119
    return-void
.end method
