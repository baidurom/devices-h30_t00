.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageSmallFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageSmallFilter"

.field protected static mBackgroundColor:I

.field protected static mMargin:I

.field protected static mTextMargin:I


# instance fields
.field private config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

.field private mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field protected mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field protected mIsSelected:Z

.field private mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mSelectedBackgroundColor:I

.field private mSetBorder:Z

.field private mShowTitle:Z

.field protected final mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xc

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 61
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 62
    const v0, -0xffff01

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 39
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 43
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 63
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 64
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 88
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->get(Landroid/content/Context;)Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 39
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 43
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 63
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 64
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 82
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->get(Landroid/content/Context;)Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    .line 83
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 77
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    .line 78
    return-void
.end method

.method public static setMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 69
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 70
    return-void
.end method

.method public static setTextMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 73
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 74
    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "canvas"
    .parameter "image"
    .parameter "destination"

    .prologue
    const/high16 v7, 0x4000

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 237
    .local v1, iw:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 238
    .local v0, ih:I
    const/4 v4, 0x0

    .line 239
    .local v4, x:I
    const/4 v5, 0x0

    .line 240
    .local v5, y:I
    const/4 v2, 0x0

    .line 241
    .local v2, size:I
    const/4 v3, 0x0

    .line 242
    .local v3, source:Landroid/graphics/Rect;
    if-le v1, v0, :cond_1

    .line 243
    move v2, v0

    .line 244
    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 245
    const/4 v5, 0x0

    .line 251
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #source:Landroid/graphics/Rect;
    add-int v6, v4, v2

    add-int v7, v5, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .restart local v3       #source:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    .end local v0           #ih:I
    .end local v1           #iw:I
    .end local v2           #size:I
    .end local v3           #source:Landroid/graphics/Rect;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    return-void

    .line 247
    .restart local v0       #ih:I
    .restart local v1       #iw:I
    .restart local v2       #size:I
    .restart local v3       #source:Landroid/graphics/Rect;
    .restart local v4       #x:I
    .restart local v5       #y:I
    :cond_1
    move v2, v1

    .line 248
    const/4 v4, 0x0

    .line 249
    sub-int v6, v0, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_0
.end method

.method protected drawSmallFilter(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "bitmap"
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 211
    .local v0, backgroundNinePatch:Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 212
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v5

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 215
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 217
    .local v1, frame:Landroid/graphics/drawable/NinePatchDrawable;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v5

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 223
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    return-void

    .line 219
    .end local v1           #frame:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 220
    .restart local v1       #frame:Landroid/graphics/drawable/NinePatchDrawable;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected drawText(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 202
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 204
    .local v0, textWidth:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 205
    .local v1, x:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getHeight()I

    move-result v2

    .line 206
    .local v2, y:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v1

    sget v5, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 207
    return-void
.end method

.method protected getDestinationRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->paddingSelected:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    iget v3, v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->paddingSelected:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->paddingSelected:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->config:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->paddingSelected:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 232
    .local v0, destination:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 230
    .end local v0           #destination:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #destination:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v0, :cond_2

    .line 137
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 144
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->requestFilteredImages()V

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->drawSmallFilter(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->drawText(Landroid/graphics/Canvas;)V

    .line 199
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 119
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 120
    .local v1, parentHeight:I
    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    add-int v0, v3, v4

    .line 121
    .local v0, h:I
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 110
    return-void
.end method

.method public setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 114
    return-void
.end method

.method public setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 94
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setName(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 98
    return-void
.end method

.method public setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V
    .locals 0
    .parameter "nullFilter"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 131
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 105
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 106
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 164
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    return v0
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 189
    .local v0, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-nez v0, :cond_0

    .line 192
    :cond_0
    return-void
.end method
