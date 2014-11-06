.class Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceInfoReq"
.end annotation


# static fields
.field static final INITIAL_CAPACITY:I = 0xa


# instance fields
.field mImage:Lcom/android/gallery3d/data/LocalImage;

.field final mRequestTime:J

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/LocalImage;)V
    .locals 2
    .parameter "resolver"
    .parameter "image"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mRequestTime:J

    .line 315
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mResolver:Landroid/content/ContentResolver;

    .line 316
    iput-object p2, p0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mImage:Lcom/android/gallery3d/data/LocalImage;

    .line 317
    return-void
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq$1;-><init>()V

    return-object v0
.end method
