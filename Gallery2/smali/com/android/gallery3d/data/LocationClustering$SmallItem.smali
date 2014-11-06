.class Lcom/android/gallery3d/data/LocationClustering$SmallItem;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItem"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dateInMs:J

.field lat:D

.field lng:D

.field path:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/LocationClustering$SmallItem$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/LocationClustering$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocationClustering$SmallItem;-><init>()V

    return-void
.end method
