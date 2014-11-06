.class public final Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/HiPhotoPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HiPhotoPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiPhotoPushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isTokenMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 19
    const-string v0, "com.huawei.android.push.intent.REGISTRATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v8, :cond_0

    .line 26
    const-string v8, "HiPhotoPushReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PushReceiver:onReceive"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_2

    .line 31
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "4"

    const-string v10, "ApplicationContext.getContext() null"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v8, "msg_data"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 37
    .local v1, data:[B
    const-string v8, "device_token"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 38
    .local v2, devicetoken_byte:[B
    if-eqz v2, :cond_1

    .line 41
    const/4 v6, 0x0

    .line 44
    .local v6, token:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #token:Ljava/lang/String;
    .local v7, token:Ljava/lang/String;
    move-object v6, v7

    .line 50
    .end local v7           #token:Ljava/lang/String;
    .restart local v6       #token:Ljava/lang/String;
    :goto_1
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v8, :cond_3

    .line 51
    const-string v8, "HiPhotoPushReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PushReceiver:onReceive :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/HiPhotoPushReceiver;->isTokenMessage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 54
    invoke-static {p1, v6}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->registerToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 48
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    const/4 v4, 0x0

    .line 59
    .local v4, msg:Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v5, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #msg:Ljava/lang/String;
    .local v5, msg:Ljava/lang/String;
    move-object v4, v5

    .line 65
    .end local v5           #msg:Ljava/lang/String;
    .restart local v4       #msg:Ljava/lang/String;
    :goto_2
    invoke-static {p1, v4, v6}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->processPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v3

    .line 63
    .restart local v3       #e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
