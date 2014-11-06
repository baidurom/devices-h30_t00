.class Lcom/huawei/hicloud/photosharesdk/service/MainService$1;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hicloud/photosharesdk/service/MainService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk/service/MainService;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk/service/MainService;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;->this$0:Lcom/huawei/hicloud/photosharesdk/service/MainService;

    .line 77
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;->this$0:Lcom/huawei/hicloud/photosharesdk/service/MainService;

    #getter for: Lcom/huawei/hicloud/photosharesdk/service/MainService;->mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->access$0(Lcom/huawei/hicloud/photosharesdk/service/MainService;)Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;->this$0:Lcom/huawei/hicloud/photosharesdk/service/MainService;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/service/MainService$1;->this$0:Lcom/huawei/hicloud/photosharesdk/service/MainService;

    #getter for: Lcom/huawei/hicloud/photosharesdk/service/MainService;->mImageObserver:Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->access$0(Lcom/huawei/hicloud/photosharesdk/service/MainService;)Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    :cond_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "mainservice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mainservice onDestroy 2,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
