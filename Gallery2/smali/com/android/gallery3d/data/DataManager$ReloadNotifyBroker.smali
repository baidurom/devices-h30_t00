.class Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReloadNotifyBroker"
.end annotation


# instance fields
.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/data/ReloadNotifier;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 521
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/DataManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized registerNotifier(Lcom/android/gallery3d/data/ReloadNotifier;)V
    .locals 2
    .parameter "notifier"

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload(I)V
    .locals 3
    .parameter "reloadType"

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/ReloadNotifier;

    .line 531
    .local v1, notifier:Lcom/android/gallery3d/data/ReloadNotifier;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/ReloadNotifier;->onChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 530
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #notifier:Lcom/android/gallery3d/data/ReloadNotifier;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 533
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
