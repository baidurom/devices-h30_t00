.class public Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;
.super Ljava/lang/Object;
.source "TaskesCounter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TasksCounter"

.field private static count:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static countDownTask()V
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->tasksFinished()V

    .line 25
    :cond_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    const-string v0, "TasksCounter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Taskes counts : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1
    return-void
.end method

.method public static setTaskCount(I)V
    .locals 3
    .parameter "countNumber"

    .prologue
    .line 19
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 20
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    const-string v0, "TasksCounter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Taskes counts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method private static tasksFinished()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
