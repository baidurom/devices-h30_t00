.class public Lcom/huawei/android/pushagent/utils/tools/TRSQuery;
.super Ljava/lang/Object;
.source "TRSQuery.java"


# static fields
.field static final AMPERSAND:Ljava/lang/String; = "&"

.field static final BELONG_ID:Ljava/lang/String; = "BelongId"

.field static final CONNECT_MODE:Ljava/lang/String; = "https://"

.field public static final DEFAULT_TRS_ADDR:Ljava/lang/String; = "push.hicloud.com"

.field public static final DEFAULT_TRS_ADDR_PORT:Ljava/lang/String; = ":5222"

.field static final EMUI_VERSION:Ljava/lang/String; = "emV"

.field static final EQUAL:Ljava/lang/String; = "="

.field static final IMEI:Ljava/lang/String; = "IMEI"

.field static final INTELLIGENT:Ljava/lang/String; = "intelligent"

.field static final MCC_MNC:Ljava/lang/String; = "MCCMNC"

.field static final SERVER_INNER_URL:Ljava/lang/String; = "/TRSServer/TRSRequest?"

.field static final SUPPORT_POLLING:Ljava/lang/String; = "1"

.field static final TAG:Ljava/lang/String; = "PushLog2510"

.field static final TRS_CHANNEL:Ljava/lang/String; = "channel"

.field static final TRS_MODE:Ljava/lang/String; = "mode"

.field static final VERSION_NAME:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TRSConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljavax/net/ssl/HttpsURLConnection;
    .locals 7
    .parameter "context"
    .parameter "httpUrl"
    .parameter "belongId"
    .parameter "useProxy"
    .parameter "useDefaultPort"

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, conn:Ljavax/net/ssl/HttpsURLConnection;
    move-object v0, p1

    .line 134
    .local v0, TRSUrl:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 135
    invoke-static {p0, p2, p4}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->buildUpSSLTRSUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    if-nez v0, :cond_1

    .line 138
    const-string v4, "PushLog2510"

    const-string v5, "TRSUrl is null, cannot create connection."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-object v3

    .line 141
    :cond_1
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TRS httpUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",useDefaultPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.push.intent.trs.querying"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "trs_url"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    :try_start_0
    invoke-static {p0, v0, p3}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->getConnection(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    .line 150
    const-string v4, "PushLog2510"

    const-string v5, "get connection success."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 152
    const-string v4, "PushLog2510"

    const-string v5, "call conn.connect() success"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 160
    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, e:Ljava/io/IOException;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect to TRS cause IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect to TRS cause Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static buildUpSSLTRSUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "belongId"
    .parameter "useDefaultPort"

    .prologue
    .line 170
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, mccMnc:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, imei:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 174
    const/4 v7, 0x0

    .line 208
    :goto_0
    return-object v7

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, pushVersionCode:Ljava/lang/String;
    const-string v7, "cloudpush_trsIp"

    const-string v8, "push.hicloud.com"

    invoke-static {p0, v7, v8}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, trsAddr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    const-string v5, "push.hicloud.com"

    .line 185
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 186
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 187
    .local v6, trsIP:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":5222"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .end local v6           #trsIP:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v4, sUrl:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, emuiVersion:Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "/TRSServer/TRSRequest?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "MCCMNC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "IMEI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "BelongId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "version"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "channel"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "intelligent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "emV"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private static getConnection(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/net/ssl/HttpsURLConnection;
    .locals 13
    .parameter "context"
    .parameter "httpUrl"
    .parameter "useProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 224
    .local v6, sc:Ljavax/net/ssl/SSLContext;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    new-instance v12, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;

    invoke-direct {v12, p0}, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 227
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 229
    new-instance v9, Lcom/huawei/android/pushagent/utils/tools/TRSQuery$1;

    invoke-direct {v9}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery$1;-><init>()V

    invoke-static {v9}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    if-eqz p2, :cond_0

    const/4 v9, 0x1

    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, proxyIp:Ljava/lang/String;
    const/4 v5, -0x1

    .line 246
    .local v5, proxyPort:I
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_3

    .line 247
    const-string v9, "http.proxyHost"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string v9, "http.proxyPort"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, portStr:Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2           #portStr:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 259
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 260
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "use Proxy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to open:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 264
    .local v3, proxy:Ljava/net/Proxy;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 269
    .end local v3           #proxy:Ljava/net/Proxy;
    .end local v4           #proxyIp:Ljava/lang/String;
    .end local v5           #proxyPort:I
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    if-nez v0, :cond_1

    .line 271
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "direct to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 275
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketConnTimeOut()J

    move-result-wide v9

    long-to-int v9, v9

    mul-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 276
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketReadTimeOut()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v7, v9, v11

    .line 277
    .local v7, timeOut:J
    long-to-int v9, v7

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 278
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 279
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 280
    return-object v0

    .line 249
    .end local v7           #timeOut:J
    .restart local v2       #portStr:Ljava/lang/String;
    .restart local v4       #proxyIp:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :cond_2
    :try_start_1
    const-string v2, "-1"

    goto/16 :goto_0

    .line 251
    .end local v2           #portStr:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto/16 :goto_1

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get proxy ip or port error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static queryTrs(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    .locals 10
    .parameter "context"
    .parameter "belongId"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 61
    invoke-static {p0, p1, v7}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->buildUpSSLTRSUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, httpUrl:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v6

    .line 66
    :cond_1
    const-string v7, "PushLog2510"

    const-string v8, "queryTrs runing"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v0, 0x0

    .line 71
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, v4, p1, v7, v8}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->TRSConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 84
    :cond_2
    const-string v7, "PushLog2510"

    const-string v8, "queryTrs connect() success"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 93
    .local v5, line:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 94
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v7, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;

    invoke-direct {v7, p0, v5}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 106
    if-eqz v1, :cond_3

    .line 107
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 115
    const/4 v2, 0x0

    :cond_4
    move-object v6, v7

    goto :goto_0

    .line 73
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-static {p0, v4, p1, v7, v8}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->TRSConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    if-nez v2, :cond_2

    .line 75
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p0, v4, p1, v7, v8}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->TRSConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    if-nez v2, :cond_2

    .line 77
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {p0, v4, p1, v7, v8}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->TRSConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    if-nez v2, :cond_2

    .line 79
    const-string v7, "PushLog2510"

    const-string v8, "after all, trs connect is null"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    if-eqz v0, :cond_6

    .line 107
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 115
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 109
    :catch_0
    move-exception v3

    .line 111
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 109
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 111
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v3           #e:Ljava/io/IOException;
    :cond_7
    :try_start_5
    const-string v7, "PushLog2510"

    const-string v8, "response is null"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 106
    if-eqz v1, :cond_8

    .line 107
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 113
    :cond_8
    :goto_3
    if-eqz v2, :cond_d

    .line 114
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 115
    const/4 v2, 0x0

    move-object v0, v1

    .line 121
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_9
    :goto_4
    const-wide/16 v7, 0x7d0

    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 125
    :goto_5
    const-string v7, "PushLog2510"

    const-string v8, "get IP/PORT failed, retry again."

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 111
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 102
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 103
    .local v3, e:Ljava/lang/Exception;
    :goto_6
    :try_start_8
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query trs err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 106
    if-eqz v0, :cond_a

    .line 107
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 113
    .end local v3           #e:Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v2, :cond_9

    .line 114
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 115
    const/4 v2, 0x0

    goto :goto_4

    .line 109
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 111
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 105
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 106
    :goto_8
    if-eqz v0, :cond_b

    .line 107
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 113
    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    .line 114
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 115
    const/4 v2, 0x0

    :cond_c
    throw v6

    .line 109
    :catch_5
    move-exception v3

    .line 111
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 122
    .end local v3           #e:Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 123
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v7, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 105
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_8

    .line 102
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_d
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4
.end method
