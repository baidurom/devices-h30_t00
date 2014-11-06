.class public interface abstract Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
.super Ljava/lang/Object;
.source "TaskObject.java"


# static fields
.field public static final RESPONSE_SUCCESS:I = 0x0

.field public static final RESPONSE_TIMEOUT_ONRUN:I = 0x1

.field public static final RESPONSE_TIMEOUT_RUNNING:I = 0x2


# virtual methods
.method public abstract onCancelTask()V
.end method

.method public abstract onTaskResponse(I)V
.end method

.method public abstract runTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract setTimeoutTask(Ljava/util/TimerTask;)V
.end method

.method public abstract startTimeoutTimer()V
.end method

.method public abstract stopTimeoutTimer()V
.end method
