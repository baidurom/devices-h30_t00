.class public Lcom/huawei/android/pushselfshow/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/huawei/android/pushselfshow/b/b;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/huawei/android/pushselfshow/b/b;->a:Ljava/lang/String;

    sput-object v1, Lcom/huawei/android/pushselfshow/b/b;->b:Lcom/huawei/android/pushselfshow/b/b;

    sput-object v1, Lcom/huawei/android/pushselfshow/b/b;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lcom/huawei/android/pushselfshow/b/b;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/huawei/android/pushselfshow/b/j;

    sget-object v1, Lcom/huawei/android/pushselfshow/b/b;->c:Landroid/content/Context;

    const-string v2, "pushConfig"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "cloudpush_pushLogLevel"

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/pushselfshow/b/j;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/huawei/android/pushselfshow/b/b;
    .locals 2

    const-class v1, Lcom/huawei/android/pushselfshow/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushselfshow/b/b;->b:Lcom/huawei/android/pushselfshow/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/android/pushselfshow/b/b;

    invoke-direct {v0}, Lcom/huawei/android/pushselfshow/b/b;-><init>()V

    sput-object v0, Lcom/huawei/android/pushselfshow/b/b;->b:Lcom/huawei/android/pushselfshow/b/b;

    :cond_0
    sget-object v0, Lcom/huawei/android/pushselfshow/b/b;->b:Lcom/huawei/android/pushselfshow/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "cloudpush_pushLogLevel"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-le v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    if-le v2, p5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/huawei/android/pushselfshow/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, p5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, p5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call writeLog cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/pushselfshow/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/unknown source)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/huawei/android/pushselfshow/b/b;->b:Lcom/huawei/android/pushselfshow/b/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    :cond_0
    sget-object v0, Lcom/huawei/android/pushselfshow/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p0, :cond_1

    sput-object p0, Lcom/huawei/android/pushselfshow/b/b;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/huawei/android/pushselfshow/b/b;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x2

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/b;->a()Lcom/huawei/android/pushselfshow/b/b;

    move-result-object v0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/b/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method
