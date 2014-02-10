.class public Lcom/huawei/android/pushagentproxy/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushService"


# instance fields
.field private push:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .parameter "intent"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public loadPush()Z
    .locals 4

    .prologue
    .line 90
    :try_start_0
    const-string v2, "com.huawei.android.pushagent.PushService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, pushClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    iput-object v2, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    .line 92
    invoke-virtual {p0}, Lcom/huawei/android/pushagentproxy/PushService;->setParam()Z

    .line 93
    iget-object v2, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v2}, Landroid/app/Service;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #pushClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v1, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagentproxy/PushService;->loadPush()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0
.end method

.method public setParam()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    if-nez v4, :cond_0

    .line 110
    :goto_0
    return v2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setParam"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Service;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/huawei/android/pushagentproxy/PushService;->push:Landroid/app/Service;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1
    move v2, v3

    .line 110
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "PushService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
