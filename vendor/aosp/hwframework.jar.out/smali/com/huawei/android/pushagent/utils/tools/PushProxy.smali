.class public Lcom/huawei/android/pushagent/utils/tools/PushProxy;
.super Ljava/lang/Thread;
.source "PushProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;
    }
.end annotation


# static fields
.field public static final NEED_MY_SERVICE_RUN_STR:Ljava/lang/String; = "NeedMyServiceRun"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static g_PushProxy:Lcom/huawei/android/pushagent/utils/tools/PushProxy;

.field private static handler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->g_PushProxy:Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    .line 36
    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    .line 37
    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->g_PushProxy:Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    .line 40
    sget-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->g_PushProxy:Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->start()V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    sget-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iput-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    return-void
.end method

.method static synthetic access$000()Lcom/huawei/android/pushagent/utils/tools/PushProxy;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->g_PushProxy:Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/pushagent/utils/tools/PushProxy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->process(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static coverInstallationProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    const-string v3, ""

    .line 178
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 179
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, localPkgName:Ljava/lang/String;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the Reinstall pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current PkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/huawei/android/pushagent/utils/CommFun;->resetFileAndMemory(Landroid/content/Context;I)V

    .line 189
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/huawei/android/pushagent/PushService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v1

    .line 190
    .local v1, isStopPushService:Z
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after apk reinstalled , stop pushservice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1           #isStopPushService:Z
    :cond_1
    const-string v5, "com.huawei.android.pushagent"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v5, "PushAppNotifiCfg"

    invoke-direct {v0, p0, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v0, PcPrefss:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 196
    .end local v0           #PcPrefss:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_2
    return-void
.end method

.method public static handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    .local v1, eventReceiveTime:J
    const/4 v3, 0x0

    .line 52
    .local v3, iWaitTimes:I
    :try_start_0
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_0

    .line 53
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->initWakeLock(Landroid/content/Context;)V

    .line 55
    :cond_0
    :goto_0
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    if-nez v4, :cond_3

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_3

    .line 56
    rem-int/lit8 v4, v3, 0x14

    if-nez v4, :cond_1

    .line 57
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "when send msg handler is null, waitTimes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 60
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call handleEvent cause InterruptedException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    :goto_1
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushProxy cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms dealwith "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 62
    :cond_3
    :try_start_1
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_4

    .line 63
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 66
    :cond_4
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 67
    sget-object v4, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;

    invoke-direct {v5, p0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call handleEvent cause Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static initHandler()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handler:Landroid/os/Handler;

    .line 99
    :cond_0
    return-void
.end method

.method private static initWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "proxy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    return-void
.end method

.method private needCurServiceProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    sget-object v2, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    if-ne v2, v3, :cond_0

    .line 150
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    .end local v1           #pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v2, "pushConfig"

    invoke-direct {v1, p1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .restart local v1       #pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v2, "NeedMyServiceRun"

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, needRun:I
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in file needRun:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->values()[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 155
    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->values()[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    .line 158
    .end local v0           #needRun:I
    :cond_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    if-ne v2, v3, :cond_3

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->setHightSDKStart(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    sget-object v2, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Yes:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iput-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    .line 165
    :goto_0
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " stats = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ordinal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-nez v1, :cond_2

    .line 167
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    .end local v1           #pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v2, "pushConfig"

    invoke-direct {v1, p1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    .restart local v1       #pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_2
    const-string v2, "NeedMyServiceRun"

    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    :cond_3
    sget-object v2, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Yes:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 163
    :cond_4
    sget-object v2, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->No:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    iput-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->stats:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    goto :goto_0

    .line 172
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x7

    .line 104
    if-eqz p2, :cond_1

    .line 105
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->coverInstallationProcess(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->needCurServiceProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "my pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " need deal with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/huawei/android/microkernel/MKService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 115
    new-instance v1, Landroid/content/Intent;

    .end local v1           #serviceIntent:Landroid/content/Intent;
    const-class v2, Lcom/huawei/android/pushagent/PushService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    invoke-virtual {v1, p2, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 125
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceIntent is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 119
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #serviceIntent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MKService.getAppContext() is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/huawei/android/microkernel/MKService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.huawei.deviceCloud.microKernel.push.PushMKService"

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .local v0, cpn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v1, p2, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    goto :goto_0

    .line 131
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_3
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need not current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to depose, so exit receiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->resetFileAndMemory(Landroid/content/Context;I)V

    .line 133
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->closeMyService(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 91
    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->initHandler()V

    .line 92
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 93
    return-void
.end method
