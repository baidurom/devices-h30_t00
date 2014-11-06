.class public Lcom/android/hwcamera/facedetect/event/Face;
.super Ljava/lang/Object;
.source "Face.java"


# instance fields
.field public blinkScore:I

.field public id:I

.field private mFocusStatus:I

.field public rect:Landroid/graphics/Rect;

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->mFocusStatus:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    .line 18
    invoke-virtual {p0}, Lcom/android/hwcamera/facedetect/event/Face;->initFace()V

    .line 19
    return-void
.end method


# virtual methods
.method public clone(Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 2
    .parameter "face"

    .prologue
    .line 39
    iget v0, p1, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    iget v0, p1, Lcom/android/hwcamera/facedetect/event/Face;->smileScore:I

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->smileScore:I

    .line 43
    iget v0, p1, Lcom/android/hwcamera/facedetect/event/Face;->blinkScore:I

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->blinkScore:I

    .line 44
    return-void
.end method

.method public getBlinkPercent()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->blinkScore:I

    return v0
.end method

.method public getFaceArea()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFaceId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    return v0
.end method

.method public getFocusStatus()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->mFocusStatus:I

    return v0
.end method

.method public getSmilePercent()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->smileScore:I

    return v0
.end method

.method public initFace()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    .line 32
    iput v1, p0, Lcom/android/hwcamera/facedetect/event/Face;->smileScore:I

    .line 33
    iput v1, p0, Lcom/android/hwcamera/facedetect/event/Face;->blinkScore:I

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    .line 35
    iget-object v0, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 36
    return-void
.end method

.method public setBlinkPercent(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/hwcamera/facedetect/event/Face;->blinkScore:I

    return-void
.end method

.method public setFaceId(I)V
    .locals 0
    .parameter "faceId"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    return-void
.end method

.method public setFaceRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFocusStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/hwcamera/facedetect/event/Face;->mFocusStatus:I

    return-void
.end method

.method public setSmilePercent(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/hwcamera/facedetect/event/Face;->smileScore:I

    return-void
.end method
