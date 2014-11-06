.class public Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClusterReq"
.end annotation


# static fields
.field public static final ADD_REQ:I = 0x1

.field public static final DELETE_REQ:I = 0x3

.field public static final MERGE_REQ:I = 0x4

.field public static final MOVE_REQ:I = 0x2


# instance fields
.field mImageId:I

.field mNewPersonId:I

.field mOldPersonId:I

.field mType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "type"
    .parameter "oldPersonId"
    .parameter "newPersonId"
    .parameter "imageId"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mType:I

    .line 162
    iput p2, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mOldPersonId:I

    .line 163
    iput p3, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mNewPersonId:I

    .line 164
    iput p4, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mImageId:I

    .line 165
    return-void
.end method
