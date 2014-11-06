.class public Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;
.super Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
.source "ChannelRecorder.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static isConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "PushLog2510"

    sput-object v0, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->isConnect:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;-><init>()V

    return-void
.end method

.method public static sendStateBroadcast(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "state"
    .parameter "pkgname"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, statueIntent:Landroid/content/Intent;
    sget-object v1, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStateBroadcast the current push state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "com.huawei.intent.action.PUSH_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "push_state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method private static setConnectStatus(Z)V
    .locals 0
    .parameter "connectStatus"

    .prologue
    .line 21
    sput-boolean p0, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->isConnect:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getXMLContent(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "fNames"

    .prologue
    .line 65
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_2

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 74
    :cond_1
    return-object v0

    .line 69
    :cond_2
    array-length v2, p2

    new-array v0, v2, [Ljava/lang/String;

    .line 70
    .local v0, contents:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 72
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->readFileByChars(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter ChannelRecorder:onReceive(intent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " context:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v1

    .line 30
    .local v1, curIsConnect:Z
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PushState get action :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v7, "com.huawei.android.push.intent.GET_PUSH_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 32
    const-string v7, "pkg_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, pkgname:Ljava/lang/String;
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "responseClinetGetPushState: get the client packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current program pkgName is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the current push curIsConnect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p1, v1, v6}, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->sendStateBroadcast(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v6           #pkgname:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->isConnect:Z

    if-eq v7, v1, :cond_1

    .line 58
    const/4 v7, 0x0

    invoke-static {p1, v1, v7}, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->sendStateBroadcast(Landroid/content/Context;ZLjava/lang/String;)V

    .line 59
    invoke-static {v1}, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->setConnectStatus(Z)V

    .line 62
    :cond_1
    return-void

    .line 39
    .restart local v6       #pkgname:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 40
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #pkgname:Ljava/lang/String;
    :cond_2
    const-string v7, "com.huawei.android.push.intent.GET_PUSH_FILES"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 43
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, packageName:Ljava/lang/String;
    sget-object v7, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 47
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.huawei.android.push.intent.GET_PUSH_FILES_RSP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 49
    .local v4, in:Landroid/content/Intent;
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getXMLFileNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, fileNames:[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v7, v3

    if-lez v7, :cond_3

    .line 51
    const-string v7, "file_names"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v7, "file_contents"

    invoke-virtual {p0, p1, v3}, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;->getXMLContent(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_3
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
