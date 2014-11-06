.class public Lcom/android/gallery3d/ui/MediaItemInfoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "MediaItemInfoView.java"


# static fields
.field private static final EMPTY_INFO:Ljava/lang/String; = ""

.field private static final LABEL_COUNT:I = 0x2


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mBottom:I

.field private final mBottomMargin:I

.field private mDate:Ljava/lang/String;

.field private mDateTextPaint:Landroid/text/TextPaint;

.field private mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

.field private mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

.field private mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

.field private mLabelBottomMargin:I

.field private final mLabelHeight:I

.field private final mLabelKeepBlankSize:I

.field private mLabelLimitSize:I

.field private final mLabelRightMargin:I

.field private mLatitude:D

.field private mLayoutRTL:Z

.field private mLeft:I

.field private mLocation:Ljava/lang/String;

.field private mLocationTextPaint:Landroid/text/TextPaint;

.field private mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

.field private mLongitude:D

.field private mRight:I

.field private mTop:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 12
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/high16 v11, -0x100

    const/high16 v10, 0x4000

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 38
    iput-wide v7, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLatitude:D

    .line 39
    iput-wide v7, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLongitude:D

    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 49
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mVisible:Z

    .line 51
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 52
    .local v5, r:Landroid/content/res/Resources;
    const/16 v7, 0x80

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLayoutRTL:Z

    .line 54
    const v6, 0x7f0b00f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    .line 55
    const v6, 0x7f0b0105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottomMargin:I

    .line 56
    const v6, 0x7f0b00f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelKeepBlankSize:I

    .line 58
    const v6, 0x7f0b00f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    .local v1, dateLabelSize:I
    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 60
    .local v0, dateLabelColor:I
    int-to-float v6, v1

    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    .line 61
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v10, v9, v9, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 63
    const v6, 0x7f0b00f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 64
    .local v4, locationLabelSize:I
    const v6, 0x7f0a0043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 65
    .local v3, locationLabelColor:I
    int-to-float v6, v4

    invoke-static {v6, v3}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    .line 66
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v10, v9, v9, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 68
    const v6, 0x7f0b00f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 69
    .local v2, labelMargin:I
    add-int v6, v1, v4

    mul-int/lit8 v7, v2, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    .line 71
    const-string v6, ""

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDate:Ljava/lang/String;

    .line 72
    const-string v6, ""

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocation:Ljava/lang/String;

    .line 73
    const-string v6, ""

    iget-object v7, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 74
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 75
    const-string v6, ""

    iget-object v7, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 76
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    iput-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 77
    return-void
.end method

.method private changeDateTexture()V
    .locals 5

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 181
    .local v2, texture:Lcom/android/gallery3d/ui/StringTexture;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDate:Ljava/lang/String;

    .line 183
    .local v0, date:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->getEllipsizeText(Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FLandroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 189
    iget-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    if-eq v2, v3, :cond_0

    .line 190
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    goto :goto_0
.end method

.method private changeLocationTexture()V
    .locals 5

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 197
    .local v2, texture:Lcom/android/gallery3d/ui/StringTexture;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocation:Ljava/lang/String;

    .line 199
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->getEllipsizeText(Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FLandroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    if-eq v2, v3, :cond_0

    .line 205
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    goto :goto_0
.end method

.method private defaultDraw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getWidth()I

    move-result v5

    .line 281
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getHeight()I

    move-result v2

    .line 282
    .local v2, height:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 283
    .local v0, dateLeft:I
    const/4 v1, 0x0

    .line 284
    .local v1, dateTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 286
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v3, v5, v6

    .line 287
    .local v3, locationLeft:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    sub-int v4, v2, v6

    .line 288
    .local v4, locationTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 289
    return-void
.end method

.method private defaultLayout()V
    .locals 6

    .prologue
    .line 264
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLayoutRTL:Z

    if-eqz v4, :cond_0

    .line 265
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    add-int v1, v4, v5

    .line 266
    .local v1, detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    sub-int v0, v4, v5

    .line 267
    .local v0, detailBottom:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    sub-int v3, v0, v4

    .line 268
    .local v3, detailTop:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v2, v1, v4

    .line 269
    .local v2, detailRight:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 277
    :goto_0
    return-void

    .line 271
    .end local v0           #detailBottom:I
    .end local v1           #detailLeft:I
    .end local v2           #detailRight:I
    .end local v3           #detailTop:I
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    sub-int v2, v4, v5

    .line 272
    .restart local v2       #detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    sub-int v0, v4, v5

    .line 273
    .restart local v0       #detailBottom:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    sub-int v3, v0, v4

    .line 274
    .restart local v3       #detailTop:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v1, v2, v4

    .line 275
    .restart local v1       #detailLeft:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    goto :goto_0
.end method

.method private needLayout()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 238
    .local v0, compensation:I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 256
    iget v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/MediaItemInfoView;->onConfigChanged(II)V

    .line 257
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->defaultLayout()V

    .line 261
    :goto_1
    return-void

    .line 237
    .end local v0           #compensation:I
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    goto :goto_0

    .line 240
    .restart local v0       #compensation:I
    :sswitch_0
    iget v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/MediaItemInfoView;->onConfigChanged(II)V

    .line 241
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_90_Layout()V

    goto :goto_1

    .line 245
    :sswitch_1
    iget v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/MediaItemInfoView;->onConfigChanged(II)V

    .line 246
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_180_Layout()V

    goto :goto_1

    .line 250
    :sswitch_2
    iget v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/MediaItemInfoView;->onConfigChanged(II)V

    .line 251
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_270_Layout()V

    goto :goto_1

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private onConfigChanged(II)V
    .locals 4
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 220
    div-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelKeepBlankSize:I

    sub-int v1, v2, v3

    .line 221
    .local v1, labelLimitSize:I
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    if-eq v2, v1, :cond_0

    .line 222
    iput v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    .line 223
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->changeDateTexture()V

    .line 224
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->changeLocationTexture()V

    .line 227
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit8 v2, v2, 0x3

    sub-int v2, p2, v2

    div-int/lit8 v0, v2, 0x2

    .line 228
    .local v0, bottomSpace:I
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    if-le v0, v2, :cond_1

    .line 229
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottomMargin:I

    iput v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    goto :goto_0
.end method

.method private rotate_180_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getWidth()I

    move-result v5

    .line 344
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getHeight()I

    move-result v2

    .line 346
    .local v2, height:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 347
    int-to-float v6, v5

    invoke-interface {p1, v6, v8}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 348
    const/high16 v6, 0x4334

    const/high16 v7, 0x3f80

    invoke-interface {p1, v6, v8, v8, v7}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 349
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 350
    .local v0, dateLeft:I
    neg-int v1, v2

    .line 351
    .local v1, dateTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 353
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v3, v5, v6

    .line 354
    .local v3, locationLeft:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    neg-int v4, v6

    .line 355
    .local v4, locationTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 357
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 358
    return-void
.end method

.method private rotate_180_Layout()V
    .locals 7

    .prologue
    .line 327
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLayoutRTL:Z

    if-eqz v4, :cond_0

    .line 328
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    add-int v3, v4, v5

    .line 329
    .local v3, detailTop:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    sub-int v2, v4, v5

    .line 330
    .local v2, detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v5

    .line 331
    .local v1, detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    add-int v0, v3, v4

    .line 332
    .local v0, detailBottom:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 340
    :goto_0
    return-void

    .line 334
    .end local v0           #detailBottom:I
    .end local v1           #detailLeft:I
    .end local v2           #detailRight:I
    .end local v3           #detailTop:I
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    add-int v1, v4, v5

    .line 335
    .restart local v1       #detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    add-int v3, v4, v5

    .line 336
    .restart local v3       #detailTop:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v2, v1, v4

    .line 337
    .restart local v2       #detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    add-int v0, v3, v4

    .line 338
    .restart local v0       #detailBottom:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    goto :goto_0
.end method

.method private rotate_270_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getWidth()I

    move-result v5

    .line 378
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getHeight()I

    move-result v2

    .line 380
    .local v2, height:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 381
    int-to-float v6, v2

    invoke-interface {p1, v8, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 382
    const/high16 v6, 0x4387

    const/high16 v7, 0x3f80

    invoke-interface {p1, v6, v8, v8, v7}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 384
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v0, v2, v6

    .line 385
    .local v0, dateLeft:I
    const/4 v1, 0x0

    .line 386
    .local v1, dateTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 388
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v3, v2, v6

    .line 389
    .local v3, locationLeft:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    sub-int v4, v5, v6

    .line 390
    .local v4, locationTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 392
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 393
    return-void
.end method

.method private rotate_270_Layout()V
    .locals 6

    .prologue
    .line 361
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLayoutRTL:Z

    if-eqz v4, :cond_0

    .line 362
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    sub-int v2, v4, v5

    .line 363
    .local v2, detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    sub-int v1, v2, v4

    .line 364
    .local v1, detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    sub-int v0, v4, v5

    .line 365
    .local v0, detailBottom:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v3, v0, v4

    .line 366
    .local v3, detailTop:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 374
    :goto_0
    return-void

    .line 368
    .end local v0           #detailBottom:I
    .end local v1           #detailLeft:I
    .end local v2           #detailRight:I
    .end local v3           #detailTop:I
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    sub-int v2, v4, v5

    .line 369
    .restart local v2       #detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    sub-int v1, v2, v4

    .line 370
    .restart local v1       #detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    add-int v3, v4, v5

    .line 371
    .restart local v3       #detailTop:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v0, v3, v4

    .line 372
    .restart local v0       #detailBottom:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    goto :goto_0
.end method

.method private rotate_90_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getWidth()I

    move-result v5

    .line 309
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->getHeight()I

    move-result v2

    .line 311
    .local v2, height:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 312
    int-to-float v6, v5

    invoke-interface {p1, v6, v8}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 313
    const/high16 v6, 0x42b4

    const/high16 v7, 0x3f80

    invoke-interface {p1, v6, v8, v8, v7}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 315
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v0, v2, v6

    .line 316
    .local v0, dateLeft:I
    const/4 v1, 0x0

    .line 317
    .local v1, dateTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 319
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v6

    sub-int v3, v2, v6

    .line 320
    .local v3, locationLeft:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v6

    sub-int v4, v5, v6

    .line 321
    .local v4, locationTop:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 323
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 324
    return-void
.end method

.method private rotate_90_Layout()V
    .locals 6

    .prologue
    .line 292
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLayoutRTL:Z

    if-eqz v4, :cond_0

    .line 293
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    add-int v1, v4, v5

    .line 294
    .local v1, detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    add-int v2, v1, v4

    .line 295
    .local v2, detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    add-int v3, v4, v5

    .line 296
    .local v3, detailTop:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v0, v3, v4

    .line 297
    .local v0, detailBottom:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 305
    :goto_0
    return-void

    .line 299
    .end local v0           #detailBottom:I
    .end local v1           #detailLeft:I
    .end local v2           #detailRight:I
    .end local v3           #detailTop:I
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelBottomMargin:I

    add-int v1, v4, v5

    .line 300
    .restart local v1       #detailLeft:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelHeight:I

    add-int v2, v1, v4

    .line 301
    .restart local v2       #detailRight:I
    iget v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    iget v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelRightMargin:I

    sub-int v0, v4, v5

    .line 302
    .restart local v0       #detailBottom:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v3, v0, v4

    .line 303
    .restart local v3       #detailTop:I
    invoke-super {p0, v1, v3, v2, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public layout(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 114
    iput p3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mRight:I

    .line 115
    iput p4, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mBottom:I

    .line 117
    iput p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLeft:I

    .line 118
    iput p2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mTop:I

    .line 120
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->needLayout()V

    .line 121
    return-void
.end method

.method public needResolveAddress(DD)Z
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLatitude:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLongitude:D

    cmpl-double v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 110
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 82
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mVisible:Z

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 86
    .local v0, compensation:I
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->defaultDraw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 85
    .end local v0           #compensation:I
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    goto :goto_1

    .line 88
    .restart local v0       #compensation:I
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_90_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_180_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->rotate_270_Draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 4
    .parameter "date"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 158
    .local v0, texture:Lcom/android/gallery3d/ui/StringTexture;
    const/4 v1, 0x0

    .line 160
    .local v1, textureChanged:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDate:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 163
    const/4 v1, 0x1

    .line 170
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 171
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    if-eq v0, v2, :cond_2

    .line 172
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->requestLayout()V

    .line 177
    :cond_3
    return-void

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDate:Ljava/lang/String;

    .line 166
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FLandroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mDateTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 167
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setLableVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mVisible:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->invalidate()V

    goto :goto_0
.end method

.method public setLocation(DD)V
    .locals 0
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLatitude:D

    .line 212
    iput-wide p3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLongitude:D

    .line 213
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 133
    .local v0, texture:Lcom/android/gallery3d/ui/StringTexture;
    const/4 v1, 0x0

    .line 136
    .local v1, textureChanged:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocation:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 140
    const/4 v1, 0x1

    .line 147
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mEmptyLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    if-eq v0, v2, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->recycle()V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->requestLayout()V

    .line 154
    :cond_3
    return-void

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iput-object p1, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocation:Ljava/lang/String;

    .line 143
    iget v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLabelLimitSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FLandroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/MediaItemInfoView;->mLocationTexure:Lcom/android/gallery3d/ui/StringTexture;

    .line 144
    const/4 v1, 0x1

    goto :goto_0
.end method
