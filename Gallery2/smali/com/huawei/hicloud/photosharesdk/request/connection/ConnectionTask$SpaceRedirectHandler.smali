.class Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask$SpaceRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "ConnectionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpaceRedirectHandler"
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    .line 368
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 15
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 392
    const-string v13, "HTTP response may not be null"

    .line 391
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 395
    :cond_0
    const-string v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 396
    .local v4, locationHeader:Lorg/apache/http/Header;
    if-nez v4, :cond_1

    .line 398
    new-instance v12, Lorg/apache/http/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Received redirect response "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " but no location header"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 398
    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 402
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 403
    const-string v13, "|"

    const-string v14, "%7C"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, location:Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v11, uri:Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 416
    .local v5, params:Lorg/apache/http/params/HttpParams;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_4

    .line 418
    const-string v12, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 419
    new-instance v12, Lorg/apache/http/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Relative redirect location \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' not allowed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 419
    invoke-direct {v12, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 407
    .end local v5           #params:Lorg/apache/http/params/HttpParams;
    .end local v11           #uri:Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 408
    .local v2, ex:Ljava/net/URISyntaxException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    new-instance v12, Lorg/apache/http/ProtocolException;

    .line 410
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Invalid redirect URI: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 409
    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 424
    .end local v2           #ex:Ljava/net/URISyntaxException;
    .restart local v5       #params:Lorg/apache/http/params/HttpParams;
    .restart local v11       #uri:Ljava/net/URI;
    :cond_2
    const-string v12, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 423
    check-cast v10, Lorg/apache/http/HttpHost;

    .line 425
    .local v10, target:Lorg/apache/http/HttpHost;
    if-nez v10, :cond_3

    .line 426
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 427
    const-string v13, "Target host not available in the HTTP context"

    .line 426
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 432
    :cond_3
    const-string v12, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 431
    check-cast v8, Lorg/apache/http/HttpRequest;

    .line 435
    .local v8, request:Lorg/apache/http/HttpRequest;
    :try_start_1
    new-instance v9, Ljava/net/URI;

    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 437
    .local v9, requestURI:Ljava/net/URI;
    const/4 v12, 0x1

    .line 436
    invoke-static {v9, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 438
    .local v1, absoluteRequestURI:Ljava/net/URI;
    invoke-static {v1, v11}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 445
    .end local v1           #absoluteRequestURI:Ljava/net/URI;
    .end local v8           #request:Lorg/apache/http/HttpRequest;
    .end local v9           #requestURI:Ljava/net/URI;
    .end local v10           #target:Lorg/apache/http/HttpHost;
    :cond_4
    const-string v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 448
    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 447
    check-cast v6, Lorg/apache/http/impl/client/RedirectLocations;

    .line 450
    .local v6, redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v6, :cond_5

    .line 451
    new-instance v6, Lorg/apache/http/impl/client/RedirectLocations;

    .end local v6           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    invoke-direct {v6}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 452
    .restart local v6       #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    :cond_5
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 458
    :try_start_2
    new-instance v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 459
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v13

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 458
    invoke-direct {v10, v12, v13, v14}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    .restart local v10       #target:Lorg/apache/http/HttpHost;
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 469
    .end local v10           #target:Lorg/apache/http/HttpHost;
    .local v7, redirectURI:Ljava/net/URI;
    :goto_0
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 470
    new-instance v12, Lorg/apache/http/client/CircularRedirectException;

    .line 471
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Circular redirect to \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 470
    invoke-direct {v12, v13}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 439
    .end local v6           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7           #redirectURI:Ljava/net/URI;
    .restart local v8       #request:Lorg/apache/http/HttpRequest;
    .restart local v10       #target:Lorg/apache/http/HttpHost;
    :catch_1
    move-exception v2

    .line 440
    .restart local v2       #ex:Ljava/net/URISyntaxException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    new-instance v12, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 461
    .end local v2           #ex:Ljava/net/URISyntaxException;
    .end local v8           #request:Lorg/apache/http/HttpRequest;
    .end local v10           #target:Lorg/apache/http/HttpHost;
    .restart local v6       #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    :catch_2
    move-exception v2

    .line 462
    .restart local v2       #ex:Ljava/net/URISyntaxException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    new-instance v12, Lorg/apache/http/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 466
    .end local v2           #ex:Ljava/net/URISyntaxException;
    :cond_6
    move-object v7, v11

    .restart local v7       #redirectURI:Ljava/net/URI;
    goto :goto_0

    .line 473
    :cond_7
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 477
    .end local v6           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    .end local v7           #redirectURI:Ljava/net/URI;
    :cond_8
    return-object v11
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .parameter "response"
    .parameter "context"

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 374
    const-string v2, "HTTP response may not be null"

    .line 373
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 377
    .local v0, statusCode:I
    packed-switch v0, :pswitch_data_0

    .line 384
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 382
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
