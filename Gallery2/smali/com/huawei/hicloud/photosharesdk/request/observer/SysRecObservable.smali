.class public Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;
.super Ljava/lang/Object;
.source "SysRecObservable.java"


# static fields
.field private static instance:Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;


# instance fields
.field private obs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->instance:Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->instance:Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;

    .line 37
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->instance:Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 45
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObserver(Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 59
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 74
    monitor-exit p0

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObservable;->obs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;

    invoke-interface {v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/observer/SysRecObserver;->update(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
