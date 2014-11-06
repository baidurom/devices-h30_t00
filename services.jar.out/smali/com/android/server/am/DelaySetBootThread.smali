.class Lcom/android/server/am/DelaySetBootThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# static fields
.field static final SETBOOT_DELAYTIME:I = 0x7530

.field static final TAG:Ljava/lang/String; = "DelaySetBootThread"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17221
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 17229
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17234
    :goto_0
    const-string v2, "dev.startserver.first"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 17235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 17236
    .local v0, startTime:J
    const-string v2, "DelaySetBootThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set dev.startserver to 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17237
    return-void

    .line 17230
    .end local v0           #startTime:J
    :catch_0
    move-exception v2

    goto :goto_0
.end method
