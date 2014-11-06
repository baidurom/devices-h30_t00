.class public abstract Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/Request;
.source "JSONRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonRequest"


# instance fields
.field private isCreateShareToDbank:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter "handler"
    .parameter "httpUrl"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk3/request/Request;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "httpUrl"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/Request;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    .line 66
    return-void
.end method


# virtual methods
.method protected convertToJSON([B)Lorg/json/JSONObject;
    .locals 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 197
    .local v3, str:Ljava/lang/String;
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 199
    const-string v4, "CommonRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "convertToJson"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    :cond_1
    :goto_0
    return-object v1

    .line 207
    :cond_2
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->dealJson(Ljava/lang/String;Z)V

    .line 209
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    if-eqz v4, :cond_4

    const-string v4, "\"nsp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_3

    .line 213
    const-string v4, "CommonRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nsp=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    .local v1, files:Lorg/json/JSONObject;
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    const-string v4, "sharepath"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 220
    .end local v1           #files:Lorg/json/JSONObject;
    :cond_4
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    if-eqz v4, :cond_5

    const-string v4, "\"{\\\"success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .restart local v1       #files:Lorg/json/JSONObject;
    const-string v4, "success"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 226
    const-string v4, "CommonRequest"

    const-string v5, "unbind 11 "

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v1           #files:Lorg/json/JSONObject;
    :cond_5
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    if-eqz v4, :cond_6

    const-string v4, "\"{\\\"errorCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 232
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .restart local v1       #files:Lorg/json/JSONObject;
    const-string v4, "errorCode"

    const-string v5, "errorCode\\\":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v4, "errorMsg"

    const-string v5, "errorMsg\\\":\\\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "\\\"}\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 237
    const-string v4, "CommonRequest"

    const-string v5, "unbind 22 "

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .end local v1           #files:Lorg/json/JSONObject;
    :cond_6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, jSONObject:Lorg/json/JSONObject;
    move-object v1, v2

    .line 246
    goto/16 :goto_0

    .line 248
    .end local v2           #jSONObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .locals 5

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, ct:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    :try_start_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    const/16 v4, 0x2710

    invoke-direct {v1, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ct:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .local v1, ct:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    move-object v0, v1

    .line 182
    .end local v1           #ct:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .restart local v0       #ct:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "CommonRequest"

    const-string v4, "::getJSONResponse: "

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "secret"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, base:Ljava/lang/StringBuffer;
    iget-boolean v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    if-eqz v7, :cond_4

    .line 276
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 277
    .local v4, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 286
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 313
    .end local v4           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, key:Ljava/lang/String;
    return-object v3

    .line 277
    .end local v3           #key:Ljava/lang/String;
    .restart local v4       #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 279
    .local v5, nameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, k:Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, v:Ljava/lang/String;
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v2           #k:Ljava/lang/String;
    .end local v5           #nameValuePair:Lorg/apache/http/NameValuePair;
    .end local v6           #v:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .restart local v2       #k:Ljava/lang/String;
    const-string v8, "nsp_key"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .restart local v6       #v:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 302
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #k:Ljava/lang/String;
    .end local v4           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #v:Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 304
    .restart local v5       #nameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2       #k:Ljava/lang/String;
    const-string v8, "nsp_key"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 309
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 310
    .restart local v6       #v:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public onAuthError(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public onReceiveData([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->convertToJSON([B)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    .line 90
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "CommonRequest"

    const-string v3, "receive json"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 96
    .local v1, str:Ljava/lang/String;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "Response"

    invoke-static {v2, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "CommonRequest"

    invoke-static {v2, v4, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "CommonRequest"

    invoke-static {v2, v4, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public parseJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, clientBaseRsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 155
    .local v1, gson:Lcom/google/gson/Gson;
    instance-of v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientBaseRsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;

    .line 160
    .restart local v0       #clientBaseRsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
    :cond_0
    return-object v0
.end method

.method public setIsCreateShareToDbank(Z)V
    .locals 0
    .parameter "isCreateShare"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->isCreateShareToDbank:Z

    .line 76
    return-void
.end method
