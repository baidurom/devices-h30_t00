.class public abstract Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.super Ljava/lang/Object;
.source "ConnectionTask.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
.implements Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask$SpaceRedirectHandler;
    }
.end annotation


# static fields
.field protected static final DATA_BUFFER_LEN:I = 0x40000

.field public static final GET:I = 0x1

.field public static final POST:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "--- ConnectionTask ---"


# instance fields
.field protected breakpoint:J

.field protected canceled:Z

.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field contentLen:J

.field private dataBuf:[B

.field downLen:J

.field protected file:Ljava/io/RandomAccessFile;

.field protected fileLenght:J

.field protected httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

.field protected httpUrl:Ljava/lang/String;

.field protected is:Ljava/io/InputStream;

.field private isNeedSendMess:Z

.field protected isTimeOut:Z

.field public jsondata:Ljava/lang/String;

.field public paramsters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z

.field private randomStr:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field protected requestInfo:Lcom/huawei/hicloud/photosharesdk/request/Request;

.field protected requestType:I

.field protected responseCode:I

.field private sdSyn:Ljava/lang/Object;

.field private sendHead:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected timeout:I

.field protected timer:Ljava/util/Timer;

.field protected timerTask:Ljava/util/TimerTask;

.field public toDbank:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;)V
    .locals 6
    .parameter "httpCallback"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    .line 113
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    .line 118
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    .line 123
    iput-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isNeedSendMess:Z

    .line 132
    iput v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestType:I

    .line 137
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    .line 142
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    .line 147
    const v0, 0xea60

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timeout:I

    .line 152
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dataBuf:[B

    .line 154
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    .line 156
    iput-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    .line 161
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 166
    iput v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    .line 171
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 176
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    .line 181
    iput-wide v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->breakpoint:J

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sdSyn:Ljava/lang/Object;

    .line 197
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    .line 548
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 550
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 704
    iput-wide v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->contentLen:J

    .line 709
    iput-wide v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->downLen:J

    .line 210
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->getInstance()Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->addObserver(Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;)V

    .line 211
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    .line 212
    return-void
.end method

.method private dealResponse(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 630
    const-string v0, "Protocol Request: "

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "jkjkkjklo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 649
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection response error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 652
    :goto_0
    return-void

    .line 640
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readErrorResponse(Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    .line 643
    :sswitch_2
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Connection busy"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :sswitch_3
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Connection bad request"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_1
        0x193 -> :sswitch_3
        0x1f4 -> :sswitch_3
        0x1f6 -> :sswitch_3
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method

.method private doGET()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 486
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setRequestHeaders()V

    .line 488
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v1, :cond_4

    .line 490
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 497
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 498
    const-string v2, "http.connection.timeout"

    .line 499
    const/16 v3, 0x2710

    .line 497
    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 500
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    .line 501
    const/16 v3, 0x7530

    .line 500
    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 508
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 509
    .local v0, response:Lorg/apache/http/HttpResponse;
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 511
    const-string v1, "--- ConnectionTask ---"

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DoGet=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    .line 516
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 517
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 526
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    if-eqz v1, :cond_7

    .line 527
    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 492
    .end local v0           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_JPJX_HTTPS:Z

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_0

    .line 518
    .restart local v0       #response:Lorg/apache/http/HttpResponse;
    :cond_5
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0xce

    if-ne v1, v2, :cond_6

    .line 519
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 520
    :cond_6
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 521
    const-string v1, "NSP-Auth"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->doTask()V

    goto :goto_1

    .line 534
    :cond_7
    return-void
.end method

.method private doPost()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 555
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dataBuf:[B

    if-eqz v4, :cond_5

    .line 556
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->stopTimeoutTimer()V

    .line 557
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dataBuf:[B

    invoke-direct {v1, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 558
    .local v1, entity:Lorg/apache/http/HttpEntity;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 559
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v5, "Content-Type"

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "multipart/form-data; boundary=----------"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->randomStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 560
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    const-string v5, "RANGE"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v6, "RANGE"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    const-string v7, "RANGE"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setRequestHeaders()V

    .line 580
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_2

    .line 582
    const-string v5, "Protocol Request: "

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_2
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v4, :cond_7

    .line 587
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 595
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 596
    const-string v5, "http.socket.timeout"

    .line 597
    const/16 v6, 0x7530

    .line 595
    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 598
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 599
    const-string v5, "http.connection.timeout"

    .line 600
    const/16 v6, 0x2710

    .line 598
    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 610
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask$SpaceRedirectHandler;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask$SpaceRedirectHandler;-><init>()V

    .line 611
    .local v0, customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 612
    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 615
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 616
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    .line 617
    invoke-direct {p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dealResponse(Lorg/apache/http/HttpResponse;)V

    .line 619
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    if-eqz v4, :cond_8

    .line 620
    :cond_4
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 562
    .end local v0           #customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :cond_5
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 563
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    .line 564
    const-string v5, "UTF-8"

    .line 563
    invoke-direct {v1, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 565
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 566
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_6
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 567
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v3, se:Lorg/apache/http/entity/StringEntity;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Content-Type"

    .line 569
    const-string v6, "application/json"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v3, v4}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 570
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 589
    .end local v3           #se:Lorg/apache/http/entity/StringEntity;
    :cond_7
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_JPJX_HTTPS:Z

    if-eqz v4, :cond_3

    .line 591
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_1

    .line 625
    .restart local v0       #customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    :cond_8
    return-void
.end method

.method private hanlderException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V

    .line 699
    return-void
.end method

.method public static isNeedProxy(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 967
    .line 968
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 967
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 969
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 970
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 974
    .local v3, type:I
    if-ne v3, v5, :cond_1

    .line 991
    .end local v3           #type:I
    :cond_0
    :goto_0
    return v4

    .line 980
    .restart local v3       #type:I
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, mobileProxyIp:Ljava/lang/String;
    if-eqz v2, :cond_0

    move v4, v5

    .line 985
    goto :goto_0
.end method

.method private setConnError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 775
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "--- ConnectionTask ---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConnError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 777
    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_2

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isNeedSendMess:Z

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;->onConnError(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 852
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 853
    const-string v0, "--- ConnectionTask ---"

    const-string v1, "canceled"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    .line 855
    return-void
.end method

.method protected clearNet()V
    .locals 4

    .prologue
    .line 730
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->getInstance()Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->deleteObserver(Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;)V

    .line 731
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sdSyn:Ljava/lang/Object;

    monitor-enter v2

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2

    .line 741
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 731
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "clear net Exception:"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 747
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    goto :goto_0

    .line 731
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 746
    :catchall_1
    move-exception v1

    .line 747
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 748
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 749
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 309
    :cond_1
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->doGET()V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->doPost()V

    goto :goto_0
.end method

.method public getBreakPoint()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->breakpoint:J

    return-wide v0
.end method

.method public getFileLenght()J
    .locals 2

    .prologue
    .line 996
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    return-wide v0
.end method

.method public getRequestInfo()Lcom/huawei/hicloud/photosharesdk/request/Request;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk/request/Request;

    return-object v0
.end method

.method protected handlerInterruptedException(Ljava/lang/InterruptedException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 919
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlerInterruptedIOException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    if-nez v0, :cond_0

    .line 722
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V

    .line 724
    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    return v0
.end method

.method public isToDbank()Z
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    return v0
.end method

.method public onCancelTask()V
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    .line 862
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    .line 863
    return-void
.end method

.method public onTaskResponse(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 895
    packed-switch p1, :pswitch_data_0

    .line 908
    :goto_0
    return-void

    .line 898
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    .line 899
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setTimeOut(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 903
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pausedConnect()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    .line 289
    return-void
.end method

.method protected readErrorResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    .line 668
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    .line 686
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 688
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->dealResponse(Lorg/apache/http/HttpResponse;Z)V

    goto :goto_0
.end method

.method public runTask()V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_8

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    .line 360
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, se:Ljava/lang/SecurityException;
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 325
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/InterruptedIOException;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->handlerInterruptedIOException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->handlerInterruptedException(Ljava/lang/InterruptedException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 333
    .local v0, e:Ljava/net/SocketException;
    :try_start_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/net/SocketException;
    :catch_4
    move-exception v0

    .line 336
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v0

    .line 339
    .local v0, e:Lorg/json/JSONException;
    :try_start_6
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 341
    .end local v0           #e:Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto/16 :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Error;
    :try_start_9
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    if-nez v2, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 357
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    goto/16 :goto_0

    .line 354
    :cond_0
    :try_start_a
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 356
    .end local v0           #e:Ljava/lang/Error;
    :catchall_0
    move-exception v2

    .line 357
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    .line 358
    throw v2
.end method

.method public abstract sendTaskReq()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
.end method

.method public setBreakPoint(J)V
    .locals 0
    .parameter "breakpoint"

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->breakpoint:J

    .line 228
    return-void
.end method

.method public setDataBuf([B)V
    .locals 1
    .parameter "dataBuf"

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 830
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dataBuf:[B

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->dataBuf:[B

    goto :goto_0
.end method

.method protected setError(Ljava/lang/String;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 813
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 814
    const-string v0, "--- ConnectionTask ---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 815
    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isNeedSendMess:Z

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-interface {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;->onError(ILjava/lang/String;)V

    .line 819
    :cond_1
    return-void
.end method

.method public setFileLenght(J)V
    .locals 0
    .parameter "fileLenght"

    .prologue
    .line 1001
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    .line 1002
    return-void
.end method

.method public setHeader(Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, header:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public setNeedSendMess(Z)V
    .locals 0
    .parameter "isNeedSendMess"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isNeedSendMess:Z

    .line 127
    return-void
.end method

.method public setRandomStr(Ljava/lang/String;)V
    .locals 0
    .parameter "randomStr"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->randomStr:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setRequestHeaders()V
    .locals 5

    .prologue
    .line 252
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v3, :cond_1

    .line 261
    :cond_0
    return-void

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 256
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestInfo(Lcom/huawei/hicloud/photosharesdk/request/Request;)V
    .locals 0
    .parameter "requestInfo"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk/request/Request;

    .line 540
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .parameter "requestType"

    .prologue
    .line 845
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestType:I

    .line 846
    return-void
.end method

.method protected setTimeOut(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 796
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 797
    const-string v0, "--- ConnectionTask ---"

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTimeOut "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_2

    .line 806
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isNeedSendMess:Z

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    invoke-interface {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;->onTimeOut(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeoutTask(Ljava/util/TimerTask;)V
    .locals 0
    .parameter "timeoutTask"

    .prologue
    .line 940
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    .line 941
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 883
    if-eqz p1, :cond_0

    .line 884
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    .line 886
    :cond_0
    return-void
.end method

.method public setToDbank(Z)V
    .locals 0
    .parameter "toDbank"

    .prologue
    .line 1011
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    .line 1012
    return-void
.end method

.method public startTimeoutTimer()V
    .locals 4

    .prologue
    .line 947
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 950
    :cond_0
    return-void
.end method

.method public stopTimeoutTimer()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 959
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 872
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 873
    const-string v0, "dddddddddddddd"

    const-string v1, "sssssssssssssssssssssssssss"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->clearNet()V

    .line 875
    return-void
.end method
