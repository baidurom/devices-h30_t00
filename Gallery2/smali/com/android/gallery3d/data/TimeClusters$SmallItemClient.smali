.class Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;
.super Ljava/lang/Object;
.source "TimeClusters.java"

# interfaces
.implements Lcom/android/gallery3d/data/ClusterWorker$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/TimeClusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItemClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/data/ClusterWorker$Proxy",
        "<",
        "Lcom/android/gallery3d/data/TimeClusters$SmallItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public generateCaption(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 47
    const/16 v0, 0x24

    .line 48
    .local v0, format:I
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->dateInMs:J

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic generateCaption(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;->generateCaption(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClusterKey(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 53
    iget v0, p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClusterKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;->getClusterKey(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "item"

    .prologue
    .line 42
    iget-object v0, p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/Object;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lcom/android/gallery3d/data/TimeClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;->getPath(Lcom/android/gallery3d/data/TimeClusters$SmallItem;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method
