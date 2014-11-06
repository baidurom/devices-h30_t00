.class Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;
.super Ljava/lang/Object;
.source "LocationClusters.java"

# interfaces
.implements Lcom/android/gallery3d/data/ClusterWorker$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItemClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/data/ClusterWorker$Proxy",
        "<",
        "Lcom/android/gallery3d/data/LocationClusters$SmallItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_DISTANCE_BETWEEN_TWO_POINTS:D = 3000.0


# instance fields
.field private final S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

.field private mCachedCaption:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/gallery3d/data/LocationClusters$SmallItem;",
            "Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mGeocoder:Lcom/android/gallery3d/util/ReverseGeocoder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mCachedCaption:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/android/gallery3d/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mGeocoder:Lcom/android/gallery3d/util/ReverseGeocoder;

    .line 50
    new-instance v0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    invoke-direct {v0}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    const-string v1, "-1"

    iput-object v1, v0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->key:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    const v1, 0x7f0d02a3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->caption:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private findCaptionKey(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    .locals 14
    .parameter "item"

    .prologue
    .line 74
    iget-wide v0, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    iget-wide v2, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v9, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .line 107
    :cond_0
    :goto_0
    return-object v9

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mCachedCaption:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .line 77
    .local v9, captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    if-nez v9, :cond_0

    .line 79
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v8, captionCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mCachedCaption:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;

    .line 81
    .local v13, s:Lcom/android/gallery3d/data/LocationClusters$SmallItem;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mCachedCaption:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    check-cast v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .line 82
    .restart local v9       #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    iget-wide v0, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    iget-wide v2, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    iget-wide v2, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    :cond_2
    iget-wide v0, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v0

    double-to-float v11, v0

    .line 86
    .local v11, distance:F
    float-to-double v0, v11

    const-wide v2, 0x40a7700000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 87
    const-string v0, "LocationClusters"

    const-string v1, "distance between base(%s, %s) and target(%s, %s) less than %s."

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, v13, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, 0x40a7700000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 91
    :cond_3
    iget-object v0, v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->caption:Ljava/lang/String;

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 93
    .end local v11           #distance:F
    .end local v13           #s:Lcom/android/gallery3d/data/LocationClusters$SmallItem;
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mGeocoder:Lcom/android/gallery3d/util/ReverseGeocoder;

    iget-wide v1, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    iget-wide v3, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/ReverseGeocoder;->getAddress(DD)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, cpt:Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->S_NO_LOCATION:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .line 104
    :goto_2
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->mCachedCaption:Ljava/util/Map;

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    :cond_6
    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    check-cast v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .restart local v9       #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    goto :goto_2

    .line 99
    :cond_7
    new-instance v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    .end local v9           #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    invoke-direct {v9}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;-><init>()V

    .line 100
    .restart local v9       #captionKey:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->lng:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->key:Ljava/lang/String;

    .line 101
    iput-object v10, v9, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->caption:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public generateCaption(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Ljava/lang/String;
    .locals 2
    .parameter "item"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->findCaptionKey(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    move-result-object v0

    .line 63
    .local v0, ck:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    iget-object v1, v0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->caption:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic generateCaption(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->generateCaption(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClusterKey(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Ljava/lang/String;
    .locals 2
    .parameter "item"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->findCaptionKey(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;

    move-result-object v0

    .line 69
    .local v0, ck:Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;
    iget-object v1, v0, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient$CaptionKey;->key:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic getClusterKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->getClusterKey(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "item"

    .prologue
    .line 57
    iget-object v0, p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/Object;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/android/gallery3d/data/LocationClusters$SmallItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$SmallItemClient;->getPath(Lcom/android/gallery3d/data/LocationClusters$SmallItem;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method
