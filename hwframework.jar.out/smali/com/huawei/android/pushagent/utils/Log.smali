.class public Lcom/huawei/android/pushagent/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final CALL_LOG_LEVEL:I = 0x2

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final Log_Level_Control_tag:Ljava/lang/String; = "hwpush"

.field public static final OFF:I = 0x8

.field public static final TAG:Ljava/lang/String; = "PushLog2510"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static g_Logger:Lcom/huawei/android/pushagent/utils/Log;

.field private static lastPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    sput-object v0, Lcom/huawei/android/pushagent/utils/Log;->lastPkgName:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 83
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 84
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 86
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 87
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 101
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 102
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 104
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 105
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/android/pushagent/utils/Log;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/huawei/android/pushagent/utils/Log;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huawei/android/pushagent/utils/Log;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/utils/Log;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;

    .line 49
    :cond_0
    sget-object v0, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "ex"

    .prologue
    .line 120
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 89
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 90
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 92
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 93
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    sget-object v2, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;

    if-nez v2, :cond_0

    .line 55
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    .line 57
    :cond_0
    sget-object v2, Lcom/huawei/android/pushagent/utils/Log;->lastPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    sget-object v2, Lcom/huawei/android/pushagent/utils/Log;->g_Logger:Lcom/huawei/android/pushagent/utils/Log;

    if-eqz v2, :cond_3

    .line 64
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 69
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, splitName:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 72
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    sput-object v2, Lcom/huawei/android/pushagent/utils/Log;->lastPkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isLoggable(I)Z
    .locals 2
    .parameter "priority"

    .prologue
    .line 171
    :try_start_0
    const-string v1, "hwpush"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    .line 107
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 108
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    const/4 v1, 0x2

    .line 110
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 111
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 95
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 96
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 98
    invoke-static {}, Lcom/huawei/android/pushagent/utils/Log;->getInstance()Lcom/huawei/android/pushagent/utils/Log;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushagent/utils/Log;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 99
    return-void
.end method

.method private declared-synchronized writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 5
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"
    .parameter "th"
    .parameter "bt"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/Log;->isLoggable(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 146
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 147
    .local v0, st:[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-le v2, p5, :cond_2

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/pushagent/utils/Log;->lastPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, p5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, p5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 157
    :goto_1
    if-eqz p4, :cond_1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/huawei/android/pushagent/utils/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 162
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 164
    .end local v0           #st:[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 165
    .local v1, we:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call writeLog cause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 139
    .end local v1           #we:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 153
    .restart local v0       #st:[Ljava/lang/StackTraceElement;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/pushagent/utils/Log;->lastPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unknown source)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p3

    goto :goto_1
.end method
