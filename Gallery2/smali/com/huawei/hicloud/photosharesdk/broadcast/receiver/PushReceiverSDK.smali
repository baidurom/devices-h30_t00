.class public Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/PushReceiverSDK;
.super Lcom/huawei/android/pushagent/PushReceiver;
.source "PushReceiverSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiPhotoPushReceiverSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/huawei/android/pushagent/PushReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMsg(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "token"

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 23
    .local v1, message:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #message:Ljava/lang/String;
    .local v2, message:Ljava/lang/String;
    move-object v1, v2

    .line 29
    .end local v2           #message:Ljava/lang/String;
    .restart local v1       #message:Ljava/lang/String;
    :goto_0
    const-string v3, "HiPhotoPushReceiverSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PushReceiverSDK:onPushMsg"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 33
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    const-string v5, "ApplicationContext.getContext() null"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_1
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-static {p1, v1, p3}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->processPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "token"

    .prologue
    .line 42
    const-string v0, "HiPhotoPushReceiverSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushReceiverSDK:onToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "HiPhotoPushReceiverSDK"

    const-string v1, "ApplicationContext.getContext() null"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->registerToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
