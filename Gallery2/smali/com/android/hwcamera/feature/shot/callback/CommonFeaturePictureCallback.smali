.class public Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
.super Ljava/lang/Object;
.source "CommonFeaturePictureCallback.java"

# interfaces
.implements Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;


# instance fields
.field protected mIsHDR:Z

.field protected mLocation:Landroid/location/Location;

.field protected mPhotoModule:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method public constructor <init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V
    .locals 1
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mIsHDR:Z

    .line 16
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mLocation:Landroid/location/Location;

    .line 17
    iput-boolean p2, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mIsHDR:Z

    .line 18
    iput-object p3, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 19
    return-void
.end method


# virtual methods
.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onBestPhotoReport(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 73
    return-void
.end method

.method public onFakePictureTaken()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->onFakePictureTaken()V

    .line 34
    return-void
.end method

.method public onLastPictureTaken()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->onLastPictureTaken(Z)V

    .line 24
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 48
    return-void
.end method

.method public onQuickThumbnail([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/PhotoModule;->onQuickThumbnail([BZ)V

    .line 39
    return-void
.end method

.method public onSmartSenceReport(B)V
    .locals 1
    .parameter "type"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PhotoModule;->onSmartSenceReport(B)V

    .line 44
    return-void
.end method

.method public setIsHDR(Z)V
    .locals 0
    .parameter "mIsHDR"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mIsHDR:Z

    .line 56
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "mLocation"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mLocation:Landroid/location/Location;

    .line 52
    return-void
.end method

.method public setPhotoModule(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "mPhotoModule"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 60
    return-void
.end method

.method public storeImage([BIIZZ)V
    .locals 7
    .parameter "jpegData"
    .parameter "postWidth"
    .parameter "postHeight"
    .parameter "isHdr"
    .parameter "updateThumbnail"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    if-nez p4, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mIsHDR:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->mLocation:Landroid/location/Location;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule;->storeImage([BIIZLandroid/location/Location;Z)Ljava/lang/String;

    .line 29
    return-void

    .line 28
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 0
    .parameter "isPressBackMenu"

    .prologue
    .line 69
    return-void
.end method
