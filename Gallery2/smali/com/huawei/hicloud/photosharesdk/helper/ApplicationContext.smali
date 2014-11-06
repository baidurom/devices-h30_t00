.class public Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "ApplicationContext.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "className"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, isRunning:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 79
    const/4 v4, 0x0

    .line 98
    :goto_0
    return v4

    .line 83
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 97
    :goto_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "className:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isRunning:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 98
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "service.getClassName():"

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string v7, ",className:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v5, v6, v4}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const/4 v2, 0x1

    .line 92
    goto :goto_2

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "ApplicationContext"

    const-string v1, "setContext"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "try to assign context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    sput-object p0, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->sContext:Landroid/content/Context;

    .line 30
    return-void
.end method
