.class public Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;
.super Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
.source "BestPhotoFeaturePictureCallback.java"

# interfaces
.implements Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BestPhotoFeaturePictureCallback"


# instance fields
.field private mIsBestPhotoOn:Z


# direct methods
.method public constructor <init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;-><init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V

    .line 19
    return-void
.end method


# virtual methods
.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance()Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->isProcessIng()Z

    move-result v0

    return v0
.end method

.method public onBestPhotoReport(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 62
    invoke-static {}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance()Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->onBestPhotoReport(I)V

    .line 63
    return-void
.end method

.method public onLastPictureTaken()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "BestPhotoFeaturePictureCallback"

    const-string v1, "onLastPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->mIsBestPhotoOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PhotoModule;->onLastPictureTaken(Z)V

    .line 25
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->mIsBestPhotoOn:Z

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "BestPhotoFeaturePictureCallback"

    const-string v1, "onLastPictureTaken go int burst prefer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->initialize()V

    .line 29
    :cond_0
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQuickThumbnail([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->mIsBestPhotoOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/android/hwcamera/PhotoModule;->onQuickThumbnail([BZ)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsBestPhotoOn(Z)V
    .locals 0
    .parameter "bestPhotoOn"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->mIsBestPhotoOn:Z

    .line 48
    return-void
.end method

.method public storeImage([BIIZZ)V
    .locals 2
    .parameter "jpegData"
    .parameter "postWidth"
    .parameter "postHeight"
    .parameter "isHdr"
    .parameter "updateThumbnail"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->mIsBestPhotoOn:Z

    if-nez v0, :cond_0

    .line 40
    invoke-super/range {p0 .. p5}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->storeImage([BIIZZ)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const-string v1, ".burst"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/hwcamera/PhotoModule;->storeImage([BIILjava/lang/String;)V

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 1
    .parameter "isPressBackMenu"

    .prologue
    .line 57
    invoke-static {}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->instance()Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->waitProcessDone(Z)V

    .line 58
    return-void
.end method
