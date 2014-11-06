.class public Lcom/android/gallery3d/ui/FaceIndicator;
.super Ljava/lang/Object;
.source "FaceIndicator.java"


# static fields
.field public static final ADD_NAME:I = 0x0

.field private static final DOWN_ARROW:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final OUTLINE_WIDTH:F = 0.0f

.field public static final SELECT_NAME:I = 0x1

.field public static final SHOW_ADDNAME:I = 0x3

.field public static final SHOW_SHAREMENU:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FaceIndicator"

.field private static final UP_ARROW:I


# instance fields
.field private mAddName:Ljava/lang/String;

.field private mBArrowDownHeight:I

.field private mBArrowDownWidth:I

.field private mBArrowUpHeight:I

.field private mBArrowUpWidth:I

.field private mBkg:Lcom/android/gallery3d/ui/Texture;

.field private mBkgHeight:I

.field private mBkgWidth:I

.field private mBkgWithDownArrow:Lcom/android/gallery3d/ui/Texture;

.field private mBkgWithUpArrow:Lcom/android/gallery3d/ui/Texture;

.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNameLenLimit:I

.field private mNamePadding:I

.field private mNamePaddingLeft:I

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mShareMenuHeight:I

.field private mShareMenuPadding:I

.field private mShareMenuWidth:I

.field private mShow:Z

.field private mShowAddNameFaceId:I

.field mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/FaceIndicator;->OUTLINE_WIDTH:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 7
    .parameter "context"
    .parameter "photoView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 44
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShow:Z

    .line 45
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    .line 46
    iput v5, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    .line 53
    sget-boolean v1, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, textSize:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePaddingLeft:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNameLenLimit:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuWidth:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuHeight:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    .line 60
    iget v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePaddingLeft:I

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    sget v2, Lcom/android/gallery3d/ui/FaceIndicator;->OUTLINE_WIDTH:F

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v3, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    .line 68
    const v1, 0x7f0d038f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mAddName:Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f020004

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithUpArrow:Lcom/android/gallery3d/ui/Texture;

    .line 70
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f020003

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithDownArrow:Lcom/android/gallery3d/ui/Texture;

    .line 71
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v2, 0x7f020005

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkg:Lcom/android/gallery3d/ui/Texture;

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkg:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWidth:I

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkg:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgHeight:I

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithUpArrow:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpWidth:I

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithUpArrow:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithDownArrow:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownWidth:I

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithDownArrow:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownHeight:I

    .line 78
    iput-object p2, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    goto/16 :goto_0
.end method

.method private calcShareMenuPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;[I)Landroid/graphics/Point;
    .locals 14
    .parameter "pictureRect"
    .parameter "faceRect"
    .parameter "point"
    .parameter "leftPadding"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/16 p3, 0x0

    .line 154
    .end local p3
    :goto_0
    return-object p3

    .line 133
    .restart local p3
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    iget v12, p1, Landroid/graphics/Rect;->left:I

    add-int v10, v11, v12

    .line 134
    .local v10, xCenterOfFaceInScreen:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->top:I

    add-int v3, v11, v12

    .line 135
    .local v3, faceBottomInScreen:I
    iget-object v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v6, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    .local v6, screenWidth:I
    iget-object v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v5, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 137
    .local v5, screenHeight:I
    iget-object v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v11, :cond_3

    .line 138
    iget-object v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v9

    .line 139
    .local v9, viewWidth:I
    iget-object v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v8

    .line 140
    .local v8, viewHeight:I
    if-lez v9, :cond_2

    move v6, v9

    .line 141
    :cond_2
    if-lez v8, :cond_3

    move v5, v8

    .line 143
    .end local v8           #viewHeight:I
    .end local v9           #viewWidth:I
    :cond_3
    iget v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int v1, v10, v11

    .line 144
    .local v1, arrowLeft:I
    iget v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int v7, v10, v11

    .line 145
    .local v7, shareMenuLeft:I
    move v2, v3

    .line 146
    .local v2, arrowTop:I
    iget v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuHeight:I

    sub-int v11, v5, v11

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    sub-int v4, v11, v12

    .line 147
    .local v4, maxTop:I
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 148
    iget v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v6, v11

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpWidth:I

    sub-int/2addr v11, v12

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 149
    iget v11, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    sub-int v11, v6, v11

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuWidth:I

    sub-int/2addr v11, v12

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShareMenuPadding:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 150
    move-object/from16 v0, p3

    iput v7, v0, Landroid/graphics/Point;->x:I

    .line 151
    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 152
    const/4 v11, 0x0

    sub-int v12, v1, v7

    aput v12, p4, v11

    .line 153
    const-string v11, "FaceIndicator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ShareMenuPoint x:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ;y:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ;leftpadding:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private canShow()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 158
    sget-boolean v3, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v0

    .line 160
    .local v0, faceFlag:Z
    iget-object v3, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v1

    .line 161
    .local v1, rotation:I
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShow:Z

    if-eqz v3, :cond_0

    .line 162
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getArrowRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "direction"
    .parameter "bkgRect"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    sub-int v2, v4, v5

    .line 118
    .local v2, top:I
    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 119
    .local v1, left:I
    iget v3, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpWidth:I

    .line 120
    .local v3, wRrrow:I
    iget v0, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    .line 127
    .local v0, hRrrow:I
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 122
    .end local v0           #hRrrow:I
    .end local v1           #left:I
    .end local v2           #top:I
    .end local v3           #wRrrow:I
    :cond_0
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 123
    .restart local v2       #top:I
    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 124
    .restart local v1       #left:I
    iget v3, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownWidth:I

    .line 125
    .restart local v3       #wRrrow:I
    iget v0, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownHeight:I

    .restart local v0       #hRrrow:I
    goto :goto_0
.end method

.method private getBkgRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II[I)Landroid/graphics/Rect;
    .locals 8
    .parameter "pictureRect"
    .parameter "faceRect"
    .parameter "wBkg"
    .parameter "hBkg"
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 88
    aput v4, p5, v4

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    add-int/2addr v6, p4

    iget v7, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 90
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    add-int v3, v5, v6

    .line 105
    .local v3, top:I
    :cond_0
    :goto_0
    iget v5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, p3

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 106
    .local v1, left:I
    if-gez v1, :cond_1

    move v1, v4

    .line 108
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, p3

    add-int v6, v3, p4

    invoke-direct {v4, v1, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 91
    .end local v1           #left:I
    .end local v3           #top:I
    :cond_2
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownHeight:I

    add-int/2addr v6, p4

    iget v7, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 92
    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, p4

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowDownHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    sub-int v3, v5, v6

    .line 93
    .restart local v3       #top:I
    const/4 v5, 0x1

    aput v5, p5, v4

    goto :goto_0

    .line 96
    .end local v3           #top:I
    :cond_3
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    sub-int/2addr v5, v6

    sub-int v3, v5, p4

    .line 97
    .restart local v3       #top:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v2, screenHeight:I
    iget v5, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    add-int/2addr v5, v6

    add-int v0, v5, p4

    .line 99
    .local v0, distanceDown:I
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v0

    if-ge v5, v6, :cond_0

    .line 100
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mBArrowUpHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePadding:I

    add-int v3, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;I)V
    .locals 31
    .parameter "canvas"
    .parameter "pictureRect"
    .parameter "index"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/FaceIndicator;->canShow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    return-void

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v21

    .line 171
    .local v21, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v21, :cond_0

    .line 172
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/data/MediaItem;->getFaceInfosAsync()[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v23

    .line 173
    .local v23, nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v20

    .line 176
    .local v20, imagewidth:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v19

    .line 177
    .local v19, imageheight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 178
    .local v30, picturewidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 180
    .local v29, pictureheight:I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 181
    const/16 v18, 0x0

    .local v18, i:I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v22, v0

    .local v22, n:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 182
    aget-object v2, v23, v18

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FaceInfo;->getPosition()Landroid/graphics/Rect;

    move-result-object v14

    .line 183
    .local v14, FaceRect:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    move/from16 v0, v30

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v29

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    div-float/2addr v3, v4

    iget v4, v14, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v8, v0

    div-float/2addr v4, v8

    iget v8, v14, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v4, v8

    float-to-int v4, v4

    move/from16 v0, v29

    int-to-float v8, v0

    move/from16 v0, v19

    int-to-float v9, v0

    div-float/2addr v8, v9

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v15, v2, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    .local v15, FaceRectInPic:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v2

    aget-object v3, v23, v18

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v24

    .line 189
    .local v24, name:Ljava/lang/String;
    if-nez v24, :cond_3

    .line 190
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    aget-object v3, v23, v18

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 181
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 195
    :cond_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    if-ne v2, v3, :cond_2

    .line 201
    :cond_4
    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNameLenLimit:I

    if-lez v2, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNameLenLimit:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 204
    :cond_5
    if-eqz v24, :cond_6

    aget-object v2, v23, v18

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FaceInfo;->getAttached()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    move-object/from16 v28, v24

    .line 212
    .local v28, personName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v27

    .line 213
    .local v27, nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePaddingLeft:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 214
    .local v5, bkgWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgHeight:I

    invoke-virtual/range {v27 .. v27}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 215
    .local v6, bkgHeight:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v2

    sub-int v2, v5, v2

    div-int/lit8 v25, v2, 0x2

    .line 216
    .local v25, namePaddingLeft:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v26, v2, 0x3

    .line 217
    .local v26, namePaddingTop:I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .local v7, direction:[I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v4, v15

    .line 218
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/ui/FaceIndicator;->getBkgRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II[I)Landroid/graphics/Rect;

    move-result-object v17

    .line 219
    .local v17, bkgRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/ui/FaceIndicator;->getArrowRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v16

    .line 220
    .local v16, arrowRect:Landroid/graphics/Rect;
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v7, v3

    if-ne v2, v3, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithDownArrow:Lcom/android/gallery3d/ui/Texture;

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 225
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkg:Lcom/android/gallery3d/ui/Texture;

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 226
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v25

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v26

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto/16 :goto_1

    .line 206
    .end local v5           #bkgWidth:I
    .end local v6           #bkgHeight:I
    .end local v7           #direction:[I
    .end local v16           #arrowRect:Landroid/graphics/Rect;
    .end local v17           #bkgRect:Landroid/graphics/Rect;
    .end local v25           #namePaddingLeft:I
    .end local v26           #namePaddingTop:I
    .end local v27           #nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    .end local v28           #personName:Ljava/lang/String;
    :cond_6
    if-eqz v24, :cond_7

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28       #personName:Ljava/lang/String;
    goto/16 :goto_2

    .line 209
    .end local v28           #personName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mAddName:Ljava/lang/String;

    move-object/from16 v28, v0

    .restart local v28       #personName:Ljava/lang/String;
    goto/16 :goto_2

    .line 223
    .restart local v5       #bkgWidth:I
    .restart local v6       #bkgHeight:I
    .restart local v7       #direction:[I
    .restart local v16       #arrowRect:Landroid/graphics/Rect;
    .restart local v17       #bkgRect:Landroid/graphics/Rect;
    .restart local v25       #namePaddingLeft:I
    .restart local v26       #namePaddingTop:I
    .restart local v27       #nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWithUpArrow:Lcom/android/gallery3d/ui/Texture;

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_3
.end method

.method public getShareMenuPoint(Landroid/graphics/Rect;ILandroid/graphics/Point;[I)Z
    .locals 24
    .parameter "pictureRect"
    .parameter "faceId"
    .parameter "point"
    .parameter "leftPadding"

    .prologue
    .line 311
    sget-boolean v19, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-nez v19, :cond_0

    const/16 v19, 0x0

    .line 346
    :goto_0
    return v19

    .line 313
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/app/FaceRecognitionSettings;->enabled()Z

    move-result v4

    .line 314
    .local v4, faceFlag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v18

    .line 315
    .local v18, rotation:I
    if-eqz v4, :cond_1

    if-eqz v18, :cond_2

    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 317
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v12

    .line 318
    .local v12, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v12, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 320
    :cond_4
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v15

    .line 321
    .local v15, nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v15, :cond_5

    array-length v0, v15

    move/from16 v19, v0

    if-nez v19, :cond_6

    :cond_5
    const/16 v19, 0x0

    goto :goto_0

    .line 323
    :cond_6
    const/4 v8, 0x0

    .line 324
    .local v8, findFaceInfo:Z
    const/4 v5, 0x0

    .line 325
    .local v5, faceInfo:Lcom/android/gallery3d/data/FaceInfo;
    const/4 v9, 0x0

    .local v9, i:I
    array-length v13, v15

    .local v13, n:I
    :goto_1
    if-ge v9, v13, :cond_7

    .line 326
    aget-object v19, v15, v9

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v14

    .line 327
    .local v14, nFaceId:I
    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 328
    aget-object v5, v15, v9

    .line 329
    const/4 v8, 0x1

    .line 334
    .end local v14           #nFaceId:I
    :cond_7
    if-nez v8, :cond_9

    const/16 v19, 0x0

    goto :goto_0

    .line 325
    .restart local v14       #nFaceId:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 336
    .end local v14           #nFaceId:I
    :cond_9
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v11

    .line 337
    .local v11, imagewidth:I
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v10

    .line 338
    .local v10, imageheight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 339
    .local v17, picturewidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 340
    .local v16, pictureheight:I
    invoke-virtual {v5}, Lcom/android/gallery3d/data/FaceInfo;->getPosition()Landroid/graphics/Rect;

    move-result-object v6

    .line 341
    .local v6, faceRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    div-float v20, v20, v21

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v21, v21, v22

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    div-float v22, v22, v23

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v7, faceRectInPic:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/gallery3d/ui/FaceIndicator;->calcShareMenuPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;[I)Landroid/graphics/Point;

    .line 346
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShow:Z

    .line 308
    return-void
.end method

.method public onTouch(FFLandroid/graphics/Rect;[ILandroid/graphics/Point;[I)I
    .locals 29
    .parameter "x"
    .parameter "y"
    .parameter "pictureRect"
    .parameter "nameType"
    .parameter "point"
    .parameter "leftPadding"

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/FaceIndicator;->canShow()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v18, -0x1

    .line 299
    :cond_0
    :goto_0
    return v18

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 233
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v15, :cond_2

    const/16 v18, -0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getFaceInfos()[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v17

    .line 235
    .local v17, nFaceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v4, v0

    if-nez v4, :cond_4

    :cond_3
    const/16 v18, -0x1

    goto :goto_0

    .line 237
    :cond_4
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v0, v4

    move/from16 v24, v0

    .line 238
    .local v24, xInPicture:I
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 240
    .local v25, yInPicture:I
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v14

    .line 241
    .local v14, imagewidth:I
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v13

    .line 242
    .local v13, imageheight:I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 243
    .local v23, picturewidth:I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v22

    .line 245
    .local v22, pictureheight:I
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 246
    aget-object v4, v17, v12

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FaceInfo;->getPosition()Landroid/graphics/Rect;

    move-result-object v10

    .line 247
    .local v10, FaceRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v0, v23

    int-to-float v4, v0

    int-to-float v5, v14

    div-float/2addr v4, v5

    iget v5, v10, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v0, v13

    move/from16 v26, v0

    div-float v5, v5, v26

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v5, v5, v26

    float-to-int v5, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    div-float v26, v26, v27

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v13

    move/from16 v28, v0

    div-float v27, v27, v28

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v6, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .local v6, FaceRectInPic:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v4

    aget-object v5, v17, v12

    invoke-virtual {v5}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v19

    .line 253
    .local v19, name:Ljava/lang/String;
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNameLenLimit:I

    if-lez v4, :cond_5

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNameLenLimit:I

    int-to-float v5, v5

    sget-object v26, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v4, v5, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 257
    :cond_5
    if-nez v19, :cond_7

    .line 258
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    const/4 v4, 0x0

    const/4 v5, 0x3

    aput v5, p4, v4

    .line 260
    aget-object v4, v17, v12

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v18

    .line 261
    .local v18, nTappedFaceId:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    .line 262
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    goto/16 :goto_0

    .line 264
    :cond_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    goto/16 :goto_0

    .line 270
    .end local v18           #nTappedFaceId:I
    :cond_7
    if-eqz v19, :cond_a

    aget-object v4, v17, v12

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FaceInfo;->getAttached()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 271
    move-object/from16 v21, v19

    .line 272
    .local v21, personName:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, p4, v4

    .line 281
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v20

    .line 282
    .local v20, nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mNamePaddingLeft:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v26

    add-int v5, v5, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 283
    .local v7, bkgWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mBkgHeight:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 284
    .local v8, bkgHeight:I
    const/4 v4, 0x1

    new-array v9, v4, [I

    .local v9, direction:[I
    move-object/from16 v4, p0

    move-object/from16 v5, p3

    .line 285
    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/ui/FaceIndicator;->getBkgRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II[I)Landroid/graphics/Rect;

    move-result-object v11

    .line 287
    .local v11, bkgRect:Landroid/graphics/Rect;
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 288
    aget-object v4, v17, v12

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v18

    .line 289
    .restart local v18       #nTappedFaceId:I
    if-eqz v19, :cond_8

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    if-eq v4, v5, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_c

    .line 290
    :cond_9
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    .line 291
    const/4 v4, 0x2

    const/4 v5, 0x0

    aget v5, p4, v5

    if-ne v4, v5, :cond_0

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/gallery3d/ui/FaceIndicator;->calcShareMenuPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;[I)Landroid/graphics/Point;

    goto/16 :goto_0

    .line 273
    .end local v7           #bkgWidth:I
    .end local v8           #bkgHeight:I
    .end local v9           #direction:[I
    .end local v11           #bkgRect:Landroid/graphics/Rect;
    .end local v18           #nTappedFaceId:I
    .end local v20           #nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    .end local v21           #personName:Ljava/lang/String;
    :cond_a
    if-eqz v19, :cond_b

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 275
    .restart local v21       #personName:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, p4, v4

    goto/16 :goto_2

    .line 277
    .end local v21           #personName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mAddName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 278
    .restart local v21       #personName:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, p4, v4

    goto/16 :goto_2

    .line 245
    .restart local v7       #bkgWidth:I
    .restart local v8       #bkgHeight:I
    .restart local v9       #direction:[I
    .restart local v11       #bkgRect:Landroid/graphics/Rect;
    .restart local v20       #nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 298
    .end local v6           #FaceRectInPic:Landroid/graphics/Rect;
    .end local v7           #bkgWidth:I
    .end local v8           #bkgHeight:I
    .end local v9           #direction:[I
    .end local v10           #FaceRect:Landroid/graphics/Rect;
    .end local v11           #bkgRect:Landroid/graphics/Rect;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #nameTexture:Lcom/android/gallery3d/ui/StringTexture;
    .end local v21           #personName:Ljava/lang/String;
    :cond_d
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/gallery3d/ui/FaceIndicator;->mShowAddNameFaceId:I

    .line 299
    const/16 v18, -0x1

    goto/16 :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 83
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FaceIndicator;->mShow:Z

    .line 304
    return-void
.end method
