.class public abstract Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "ConnectionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask$SpaceRedirectHandler;
    }
.end annotation


# static fields
.field private static final CONN_TRY_TIME:I = 0x3

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

.field protected httpUrl:Ljava/lang/String;

.field protected is:Ljava/io/InputStream;

.field protected isTimeOut:Z

.field private jsondata:Ljava/lang/String;

.field private paramsters:Ljava/util/List;
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

.field protected requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

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

.field private toDbank:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    .line 108
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    .line 113
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    .line 118
    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestType:I

    .line 123
    const v0, 0xea60

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timeout:I

    .line 133
    iput-wide v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    .line 153
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 175
    iput-wide v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    .line 180
    iput-wide v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    .line 202
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dataBuf:[B

    .line 207
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    .line 209
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 211
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sdSyn:Ljava/lang/Object;

    .line 221
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    .line 62
    return-void
.end method

.method private dealSwitch(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 748
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 767
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection response error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 769
    :goto_0
    return-void

    .line 758
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readErrorResponse(Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    .line 761
    :sswitch_2
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Connection busy"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :sswitch_3
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Connection bad request"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setRequestHeaders()V

    .line 603
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v1, :cond_5

    .line 605
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 612
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    .line 613
    const/16 v3, 0x2710

    .line 612
    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 614
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x7530

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 621
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 622
    .local v0, response:Lorg/apache/http/HttpResponse;
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 624
    const-string v1, "--- ConnectionTask ---"

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DoGet====="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    .line 628
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    .line 630
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 644
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    if-eqz v1, :cond_8

    .line 646
    :cond_3
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local v0           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v1

    .line 653
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_4

    .line 655
    const-string v2, ""

    const-string v3, "shut down"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_4
    throw v1

    .line 607
    :cond_5
    :try_start_1
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_JPJX_HTTPS:Z

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_0

    .line 632
    .restart local v0       #response:Lorg/apache/http/HttpResponse;
    :cond_6
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0xce

    if-ne v1, v2, :cond_7

    .line 634
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 636
    :cond_7
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 638
    const-string v1, "NSP-Auth"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->doTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 653
    :cond_8
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_9

    .line 655
    const-string v1, ""

    const-string v2, "shut down"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_9
    return-void
.end method

.method private doPost()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 671
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dataBuf:[B

    if-eqz v4, :cond_6

    .line 673
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->stopTimeoutTimer()V

    .line 674
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dataBuf:[B

    invoke-direct {v1, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 675
    .local v1, entity:Lorg/apache/http/HttpEntity;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 676
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "multipart/form-data; boundary=----------"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->randomStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    const-string v5, "RANGE"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v6, "RANGE"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    const-string v7, "RANGE"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setRequestHeaders()V

    .line 698
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_2

    .line 700
    const-string v5, "Protocol Request: "

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_2
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v4, :cond_8

    .line 705
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 712
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    const/16 v6, 0x7530

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 713
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.connection.timeout"

    .line 714
    const/16 v6, 0x2710

    .line 713
    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 724
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask$SpaceRedirectHandler;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask$SpaceRedirectHandler;-><init>()V

    .line 725
    .local v0, customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 727
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 728
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    .line 729
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_4

    .line 731
    const-string v4, "DoPost====="

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "responseCode ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_4
    invoke-direct {p0, v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dealSwitch(Lorg/apache/http/HttpResponse;)V

    .line 735
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    if-eqz v4, :cond_9

    .line 737
    :cond_5
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 678
    .end local v0           #customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :cond_6
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 680
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 681
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 683
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_7
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 685
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v3, se:Lorg/apache/http/entity/StringEntity;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 687
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 707
    .end local v3           #se:Lorg/apache/http/entity/StringEntity;
    :cond_8
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_JPJX_HTTPS:Z

    if-eqz v4, :cond_3

    .line 709
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getScheme(Z)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_1

    .line 744
    .restart local v0       #customRedirectHandler:Lorg/apache/http/client/RedirectHandler;
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    :cond_9
    return-void
.end method

.method private hanlderException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V

    .line 826
    return-void
.end method

.method public static isNeedProxy(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 1126
    .line 1127
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1126
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1128
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1129
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1132
    .local v3, type:I
    if-ne v3, v4, :cond_0

    .line 1134
    const/4 v4, 0x0

    .line 1152
    :goto_0
    return v4

    .line 1139
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, mobileProxyIp:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mobileProxyIp:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setConnError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 909
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 911
    const-string v0, "--- ConnectionTask ---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConnError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 913
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 917
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 988
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 990
    const-string v0, "--- ConnectionTask ---"

    const-string v1, "canceled"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    .line 993
    return-void
.end method

.method protected clearNet()V
    .locals 4

    .prologue
    .line 853
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sdSyn:Ljava/lang/Object;

    monitor-enter v2

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2

    .line 868
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 882
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 853
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_3

    .line 875
    const-string v1, "clear net Exception:"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 881
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 882
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    goto :goto_0

    .line 853
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 880
    :catchall_1
    move-exception v1

    .line 881
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 882
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 883
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 373
    :cond_1
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->doGET()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->doPost()V

    goto :goto_0
.end method

.method public getBreakPoint()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    return-wide v0
.end method

.method public getJsondata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    return-object v0
.end method

.method protected handlerInterruptedException(Ljava/lang/InterruptedException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 1068
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V

    .line 1082
    :goto_0
    return-void

    .line 1072
    :cond_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlerInterruptedIOException(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    if-eqz v0, :cond_0

    .line 840
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isTimeOut:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->hanlderException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    return v0
.end method

.method public isToDbank()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    return v0
.end method

.method public onCancelTask()V
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    .line 1001
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    .line 1002
    return-void
.end method

.method public onTaskResponse(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 1041
    packed-switch p1, :pswitch_data_0

    .line 1055
    :goto_0
    return-void

    .line 1045
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    .line 1046
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setTimeOut(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 1050
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    goto :goto_0

    .line 1041
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
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    .line 343
    return-void
.end method

.method protected readErrorResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    .line 787
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    .line 808
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    .line 809
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_2

    .line 811
    const-string v0, "--- ConnectionTask ---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readResponseData==,fileLenght:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->dealResponse(Lorg/apache/http/HttpResponse;Z)V

    goto :goto_0
.end method

.method public runTask()V
    .locals 7

    .prologue
    .line 388
    const/4 v0, 0x1

    .line 389
    .local v0, connFlag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    .line 394
    :try_start_0
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_2

    .line 396
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tryconnFlag:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    .line 389
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    instance-of v3, v1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 437
    const/4 v0, 0x1

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    goto :goto_1

    .line 440
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 443
    .local v1, e:Ljava/lang/Error;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    if-nez v3, :cond_4

    .line 446
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    :goto_2
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    goto :goto_1

    .line 450
    :cond_4
    :try_start_3
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setConnError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 454
    .end local v1           #e:Ljava/lang/Error;
    :catchall_0
    move-exception v3

    .line 455
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    .line 456
    throw v3
.end method

.method public setBreakPoint(J)V
    .locals 0
    .parameter "point"

    .prologue
    .line 271
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    .line 272
    return-void
.end method

.method public setDataBuf([B)V
    .locals 1
    .parameter "dataBuf"

    .prologue
    .line 962
    if-eqz p1, :cond_0

    .line 964
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dataBuf:[B

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->dataBuf:[B

    goto :goto_0
.end method

.method protected setError(Ljava/lang/String;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 948
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "--- ConnectionTask ---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
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
    .line 287
    .local p1, header:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public setJsondata(Ljava/lang/String;)V
    .locals 0
    .parameter "jsondata"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setParamsters(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    .line 251
    return-void
.end method

.method public setRandomStr(Ljava/lang/String;)V
    .locals 0
    .parameter "randomStr"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->randomStr:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setRequestHeaders()V
    .locals 5

    .prologue
    .line 302
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v3, :cond_1

    .line 313
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 307
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->sendHead:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestInfo(Lcom/huawei/hicloud/photosharesdk3/request/Request;)V
    .locals 0
    .parameter "req"

    .prologue
    .line 663
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    .line 664
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .parameter "requestType"

    .prologue
    .line 980
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestType:I

    .line 981
    return-void
.end method

.method protected setTimeOut(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 928
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 930
    const-string v0, "--- ConnectionTask ---"

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTimeOut "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the exception is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 937
    :cond_1
    return-void
.end method

.method public setTimeoutTask(Ljava/util/TimerTask;)V
    .locals 0
    .parameter "timeoutTask"

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    .line 1093
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    .line 1029
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    .line 1031
    :cond_0
    return-void
.end method

.method public setToDbank(Z)V
    .locals 0
    .parameter "toDbank"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->toDbank:Z

    .line 231
    return-void
.end method

.method public startTimeoutTimer()V
    .locals 4

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1104
    :cond_0
    return-void
.end method

.method public stopTimeoutTimer()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1115
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 1012
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 1014
    const-string v0, "dddddddddddddd"

    const-string v1, "sssssssssssssssssssssssssss"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->clearNet()V

    .line 1017
    return-void
.end method
