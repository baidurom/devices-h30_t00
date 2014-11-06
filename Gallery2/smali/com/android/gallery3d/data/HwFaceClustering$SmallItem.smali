.class public Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
.super Ljava/lang/Object;
.source "HwFaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/HwFaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmallItem"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dateInMs:J

.field path:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
