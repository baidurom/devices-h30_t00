.class public Lcom/android/hwcamera/eventcenter/DefaultEventCenter;
.super Ljava/lang/Object;
.source "DefaultEventCenter.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventCenter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static defaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->defaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->defaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    .line 24
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->defaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public pause()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/android/hwcamera/eventcenter/EventContext;->getInstance()Lcom/android/hwcamera/eventcenter/EventContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/eventcenter/EventContext;->getEventPublishers()Ljava/util/Collection;

    move-result-object v2

    .line 47
    .local v2, publishers:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/hwcamera/eventcenter/EventPublisher;>;"
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/eventcenter/EventPublisher;

    .line 49
    .local v1, publisher:Lcom/android/hwcamera/eventcenter/EventPublisher;
    invoke-interface {v1}, Lcom/android/hwcamera/eventcenter/EventPublisher;->onPause()V

    goto :goto_1

    .line 51
    .end local v1           #publisher:Lcom/android/hwcamera/eventcenter/EventPublisher;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->mActivity:Lcom/android/hwcamera/CameraActivity;

    goto :goto_0
.end method

.method public publish(Lcom/android/hwcamera/eventcenter/Event;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 32
    iget-object v2, p0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->mActivity:Lcom/android/hwcamera/CameraActivity;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/eventcenter/EventContext;->getInstance()Lcom/android/hwcamera/eventcenter/EventContext;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/hwcamera/eventcenter/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/eventcenter/EventContext;->getEventListeners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 36
    :cond_2
    sget-object v2, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find listeners for event type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/hwcamera/eventcenter/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/eventcenter/EventContext;->getInstance()Lcom/android/hwcamera/eventcenter/EventContext;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/hwcamera/eventcenter/Event;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/eventcenter/EventContext;->getEventPublisher(Ljava/lang/String;)Lcom/android/hwcamera/eventcenter/EventPublisher;

    move-result-object v0

    .line 41
    .local v0, eventPublisher:Lcom/android/hwcamera/eventcenter/EventPublisher;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/hwcamera/eventcenter/EventPublisher;->publish(Lcom/android/hwcamera/eventcenter/Event;Ljava/util/List;Lcom/android/hwcamera/CameraActivity;)V

    goto :goto_0
.end method

.method public resume(Lcom/android/hwcamera/CameraActivity;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 56
    invoke-static {}, Lcom/android/hwcamera/eventcenter/EventContext;->getInstance()Lcom/android/hwcamera/eventcenter/EventContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/eventcenter/EventContext;->getEventPublishers()Ljava/util/Collection;

    move-result-object v2

    .line 57
    .local v2, publishers:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/hwcamera/eventcenter/EventPublisher;>;"
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/eventcenter/EventPublisher;

    .line 59
    .local v1, publisher:Lcom/android/hwcamera/eventcenter/EventPublisher;
    invoke-interface {v1}, Lcom/android/hwcamera/eventcenter/EventPublisher;->onResume()V

    goto :goto_0
.end method
