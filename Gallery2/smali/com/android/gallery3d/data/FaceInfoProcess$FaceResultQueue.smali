.class Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceResultQueue"
.end annotation


# static fields
.field private static mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->remove()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->getNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->moveReq(III)V

    return-void
.end method

.method static synthetic access$1100(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mergeReq(II)V

    return-void
.end method

.method static synthetic access$900(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->addReq(II)V

    return-void
.end method

.method private static addReq(II)V
    .locals 3
    .parameter "newPerson"
    .parameter "imageId"

    .prologue
    .line 172
    new-instance v0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;-><init>(IIII)V

    .line 173
    .local v0, req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    sget-object v2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 174
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v2

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getNum()I
    .locals 2

    .prologue
    .line 207
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mergeReq(II)V
    .locals 3
    .parameter "oldPerson"
    .parameter "newPerson"

    .prologue
    .line 188
    if-eq p0, p1, :cond_0

    .line 189
    new-instance v0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;-><init>(IIII)V

    .line 190
    .local v0, req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    sget-object v2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 191
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v2

    .line 194
    .end local v0           #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :cond_0
    return-void

    .line 192
    .restart local v0       #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static moveReq(III)V
    .locals 3
    .parameter "oldPerson"
    .parameter "newPerson"
    .parameter "imageId"

    .prologue
    .line 179
    if-eq p0, p1, :cond_0

    .line 180
    new-instance v0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;-><init>(IIII)V

    .line 181
    .local v0, req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    sget-object v2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 182
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v2

    .line 185
    .end local v0           #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :cond_0
    return-void

    .line 183
    .restart local v0       #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static remove()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    .locals 2

    .prologue
    .line 197
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 198
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    monitor-exit v1

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
