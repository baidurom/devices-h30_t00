.class Lcom/android/gallery3d/data/LocationClusters$SmallItem;
.super Ljava/lang/Object;
.source "LocationClusters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItem"
.end annotation


# instance fields
.field dateInMs:J

.field lat:D

.field lng:D

.field path:Lcom/android/gallery3d/data/Path;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/LocationClusters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocationClusters$SmallItem;-><init>()V

    return-void
.end method
