.class public Lcom/huawei/hicloud/photosharesdk/service/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/service/MyHandler;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/service/MyHandler;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk/service/MainService;)Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService;->mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    return-object v0
.end method

.method private registerImageObserver(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 65
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService;->mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    .line 66
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 67
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService;->mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "mainservice"

    const-string v2, "mainservice start ok"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/huawei/hicloud/photosharesdk/service/MainService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "mainservice"

    const-string v2, "mainservice end ok"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/huawei/hicloud/photosharesdk/service/MainService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 178
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->registerImageObserver(Landroid/os/Handler;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 73
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 74
    const-string v3, "mainservice"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mainservice onDestroy 1,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 77
    .local v1, executorService:Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;-><init>(Lcom/huawei/hicloud/photosharesdk/service/MainService;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 103
    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const-wide/16 v3, 0xfa0

    :try_start_0
    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 133
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 141
    :goto_1
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "mainservice"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mainservice onDestroy 3,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 118
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Error;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/lang/Error;
    :catch_5
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onDestroy"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 157
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "mainservice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    const/4 v0, 0x2

    return v0
.end method
