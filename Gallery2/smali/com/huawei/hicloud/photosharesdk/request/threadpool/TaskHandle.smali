.class public interface abstract Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
.super Ljava/lang/Object;
.source "TaskHandle.java"


# static fields
.field public static final TASK_STATE_CANCEL:I = 0x4

.field public static final TASK_STATE_CANCELRUNNING:I = 0x5

.field public static final TASK_STATE_FINISHED:I = 0x3

.field public static final TASK_STATE_INITIALIZE:I = 0x0

.field public static final TASK_STATE_RUNNING:I = 0x2

.field public static final TASK_STATE_WAITING:I = 0x1


# virtual methods
.method public abstract cancel(Ljava/util/Iterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
.end method
