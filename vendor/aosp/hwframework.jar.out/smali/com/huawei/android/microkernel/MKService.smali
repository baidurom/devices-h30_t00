.class public Lcom/huawei/android/microkernel/MKService;
.super Landroid/app/Service;
.source "MKService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0
    .parameter "appContext"

    .prologue
    .line 22
    sput-object p0, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopService()V
    .locals 5

    .prologue
    .line 34
    :try_start_0
    sget-object v3, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 35
    const-string v3, "PushLog2510"

    const-string v4, " stopService,stop Pushservice "

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/huawei/android/microkernel/MKService;->stopSelf()V

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v3, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    const-string v4, "com.huawei.deviceCloud.microKernel.push.PushMKService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .local v0, cpn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    sget-object v3, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    sget-object v3, Lcom/huawei/android/microkernel/MKService;->appContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 45
    const-string v3, "PushLog2510"

    const-string v4, " stopService,stop Push Microkernel service "

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    const-string v4, "Stop service fail"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
