.class public Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "Util.java"


# static fields
.field private static final DBANK_PATH:Ljava/lang/String; = "dbanksslglobal.cer"

.field private static final DBANK_SERVER_HTTPS_PORT:I = 0x1bb

.field private static final JPJX_PATH:Ljava/lang/String; = "JPJXHttpsServer.cer"

.field private static final JPJX_SERVER_HTTPS_PORT:I = 0x6f1b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    return-void
.end method

.method public static dealJson(Ljava/lang/String;Z)V
    .locals 8
    .parameter "str"
    .parameter "toDbank"

    .prologue
    .line 208
    const-string v4, "\"nsp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, jsonObject:Lorg/json/JSONObject;
    if-nez p1, :cond_2

    .line 219
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "401"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JPJX_ERROR:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendAccountError(Landroid/content/Context;)V

    .line 227
    :cond_2
    if-eqz p1, :cond_0

    const-string v4, "failList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const-string v4, "failList"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 230
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 232
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 233
    .local v3, object:Lorg/json/JSONObject;
    const-string v4, "errCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "errCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "206"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DBANK_CODE_STORYGE_LACK:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendServerNoSpaceError(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 243
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSONException:"

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static dealResponse(Lorg/apache/http/HttpResponse;Z)V
    .locals 11
    .parameter "response"
    .parameter "toDbank"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_1

    .line 164
    const-string v7, "NSP_STATUS"

    invoke-interface {p0, v7}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 165
    .local v2, header:Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 167
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "102"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "6"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DBANK_SESSION ERROR:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;-><init>(Landroid/content/Context;)V

    .line 173
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;->getJSONResponse()V

    .line 174
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;->setAuthInfo()Z

    move-result v6

    .line 175
    .local v6, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setAuthInfo result:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v5           #request:Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;
    .end local v6           #result:Z
    :cond_1
    :goto_0
    return-void

    .line 177
    .restart local v2       #header:Lorg/apache/http/Header;
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "109"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 179
    const-string v7, "Date"

    invoke-interface {p0, v7}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 180
    .local v0, dateHeader:Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, dbankTs:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "6"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DBANK_TS_ERROR:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->getDbankTs(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v7, v9

    .line 183
    .local v3, offset:J
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "offset:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeDbankOffsetToFile(Landroid/content/Context;J)V

    goto :goto_0

    .line 186
    .end local v0           #dateHeader:Lorg/apache/http/Header;
    .end local v1           #dbankTs:Ljava/lang/String;
    .end local v3           #offset:J
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "6"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DBANK_ERROR:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getCurrentTimeMillis()J
    .locals 8

    .prologue
    .line 258
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->readDbankOffsetFromFile(Landroid/content/Context;)J

    move-result-wide v2

    .line 259
    .local v2, offset:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 260
    .local v0, currentTimeMillis:J
    return-wide v0
.end method

.method public static getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;
    .locals 7
    .parameter "isDbank"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 77
    const/4 v3, 0x0

    .line 80
    .local v3, scheme:Lorg/apache/http/conn/scheme/Scheme;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 82
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 83
    .local v1, keyStore:Ljava/security/KeyStore;
    invoke-virtual {v1, v6, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 85
    const-string v5, "trust"

    const-string v6, "JPJXHttpsServer.cer"

    invoke-static {v0, v1, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->setKeyStore(Landroid/content/res/AssetManager;Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v5, "trust1"

    const-string v6, "dbanksslglobal.cer"

    invoke-static {v0, v1, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->setKeyStore(Landroid/content/res/AssetManager;Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, port:I
    if-eqz p0, :cond_0

    .line 91
    const/16 v2, 0x1bb

    .line 98
    :goto_0
    new-instance v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v4, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 99
    .local v4, socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    .end local v3           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    const-string v5, "https"

    invoke-direct {v3, v5, v4, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 101
    .restart local v3       #scheme:Lorg/apache/http/conn/scheme/Scheme;
    return-object v3

    .line 95
    .end local v4           #socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_0
    const/16 v2, 0x6f1b

    goto :goto_0
.end method

.method public static declared-synchronized scanFile(ZLjava/lang/String;)V
    .locals 5
    .parameter "flag"
    .parameter "savePath"

    .prologue
    .line 134
    const-class v3, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 135
    const-string v4, "isSwitchRecOn"

    .line 134
    invoke-static {v2, v4}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, isSwitchRecOn:Z
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    const-string v2, "filemanager.flag"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    return-void

    .line 134
    .end local v1           #isSwitchRecOn:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setKeyStore(Landroid/content/res/AssetManager;Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "am"
    .parameter "keyStore"
    .parameter "alias"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 111
    .local v2, ins:Ljava/io/InputStream;
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 112
    .local v1, cerFactory:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 115
    .local v0, cer:Ljava/security/cert/Certificate;
    invoke-virtual {p1, p2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 121
    return-void

    .line 118
    .end local v0           #cer:Ljava/security/cert/Certificate;
    .end local v1           #cerFactory:Ljava/security/cert/CertificateFactory;
    :catchall_0
    move-exception v3

    .line 119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 120
    throw v3
.end method
