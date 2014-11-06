.class Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationCluster"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$LocationCluster;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCluster:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;

    .line 106
    iput-object p2, p0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;

    return-object v0
.end method
