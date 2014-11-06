.class public Lcom/android/gallery3d/data/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceInfo"


# instance fields
.field private mAttached:Z

.field private mId:I

.field private mImageId:I

.field private mPersonId:I

.field private mPosition:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IZILandroid/graphics/Rect;I)V
    .locals 0
    .parameter "faceId"
    .parameter "attached"
    .parameter "personId"
    .parameter "rect"
    .parameter "imageId"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/android/gallery3d/data/FaceInfo;->mId:I

    .line 16
    iput-boolean p2, p0, Lcom/android/gallery3d/data/FaceInfo;->mAttached:Z

    .line 17
    iput p3, p0, Lcom/android/gallery3d/data/FaceInfo;->mPersonId:I

    .line 18
    iput-object p4, p0, Lcom/android/gallery3d/data/FaceInfo;->mPosition:Landroid/graphics/Rect;

    .line 19
    iput p5, p0, Lcom/android/gallery3d/data/FaceInfo;->mImageId:I

    .line 20
    return-void
.end method


# virtual methods
.method public getAttached()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/data/FaceInfo;->mAttached:Z

    return v0
.end method

.method public getFaceId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/data/FaceInfo;->mId:I

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/data/FaceInfo;->mImageId:I

    return v0
.end method

.method public getPersonId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/data/FaceInfo;->mPersonId:I

    return v0
.end method

.method public getPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceInfo;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSimilarPersonIds(Landroid/content/ContentResolver;)[I
    .locals 2
    .parameter "resolver"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/FaceInfo;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FaceManage;->getSimilarS(I)[I

    move-result-object v0

    return-object v0
.end method

.method public updateAttached(Z)V
    .locals 0
    .parameter "attached"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/gallery3d/data/FaceInfo;->mAttached:Z

    .line 28
    return-void
.end method

.method public updatePersonId(I)V
    .locals 0
    .parameter "personId"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/gallery3d/data/FaceInfo;->mPersonId:I

    .line 24
    return-void
.end method
