.class public Lcom/android/hwcamera/eventcenter/SyncEventPublisher;
.super Ljava/lang/Object;
.source "SyncEventPublisher.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventPublisher;


# static fields
.field private static syncEventPublisher:Lcom/android/hwcamera/eventcenter/SyncEventPublisher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;->syncEventPublisher:Lcom/android/hwcamera/eventcenter/SyncEventPublisher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventPublisher;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;->syncEventPublisher:Lcom/android/hwcamera/eventcenter/SyncEventPublisher;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;->syncEventPublisher:Lcom/android/hwcamera/eventcenter/SyncEventPublisher;

    .line 16
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;->syncEventPublisher:Lcom/android/hwcamera/eventcenter/SyncEventPublisher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public publish(Lcom/android/hwcamera/eventcenter/Event;Ljava/util/List;Lcom/android/hwcamera/CameraActivity;)V
    .locals 3
    .parameter "event"
    .parameter
    .parameter "cameraActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/eventcenter/Event;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventListener;",
            ">;",
            "Lcom/android/hwcamera/CameraActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/eventcenter/EventListener;

    .line 25
    .local v1, listener:Lcom/android/hwcamera/eventcenter/EventListener;
    invoke-interface {v1, p1, p3}, Lcom/android/hwcamera/eventcenter/EventListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V

    goto :goto_0

    .line 27
    .end local v1           #listener:Lcom/android/hwcamera/eventcenter/EventListener;
    :cond_0
    return-void
.end method
