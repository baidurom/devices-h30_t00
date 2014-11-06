.class public Lcom/android/gallery3d/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumLabelMaker$1;,
        Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;,
        Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;,
        Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;,
        Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I


# instance fields
.field private mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

.field private final mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private mLabelWidth:I

.field private mLayoutRTL:Z

.field private final mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPhoneIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSdcardIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSelectTextPaint:Landroid/text/TextPaint;

.field private final mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 6
    .parameter "context"
    .parameter "spec"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 74
    iget v2, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->fontSize:I

    iget v3, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTextPaint:Landroid/text/TextPaint;

    .line 75
    iget v2, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->fontSize:I

    iget v3, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->selectTitleColor:I

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSelectTextPaint:Landroid/text/TextPaint;

    .line 77
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200ec

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 78
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200ee

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 79
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200eb

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 80
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200ef

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 81
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200ed

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPhoneIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 82
    new-instance v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v3, 0x7f0200f0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSdcardIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v2, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelWidth:I

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, borders:I
    new-instance v2, Lcom/android/gallery3d/data/BitmapPool;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v4, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v4, v0

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 90
    const/16 v2, 0x80

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLayoutRTL:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSelectTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextLocation(Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;

    move-result-object v0

    return-object v0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "text"
    .parameter "lengthLimit"
    .parameter "p"

    .prologue
    .line 160
    monitor-enter p5

    .line 161
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 163
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    monitor-exit p5

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBorderSize()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sourceType"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPhoneIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSdcardIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getTextLocation(Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    .locals 9
    .parameter "title"
    .parameter "count"
    .parameter "textPaint"

    .prologue
    .line 239
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 240
    .local v4, s:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    new-instance v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker$1;)V

    .line 241
    .local v5, textLocation:Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 242
    .local v3, metrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v6, v7

    .line 243
    .local v6, titleWidth:I
    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v7, v8

    .line 244
    .local v0, Height:I
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v2, v7

    .line 245
    .local v2, countWidth:I
    invoke-direct {p0, v6, v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->hasEnoughSpace(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    iget-boolean v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLayoutRTL:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    iget v8, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    :goto_0
    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleX:I

    .line 247
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleY:I

    .line 248
    iput v6, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleLenLimit:I

    .line 249
    iget-boolean v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLayoutRTL:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    iget v8, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    sub-int/2addr v7, v2

    iget v8, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textOffset:I

    sub-int/2addr v7, v8

    :goto_1
    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countX:I

    .line 251
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countY:I

    .line 252
    iput v2, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countLenLimit:I

    .line 262
    :goto_2
    return-object v5

    .line 246
    :cond_0
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    goto :goto_0

    .line 249
    :cond_1
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int/2addr v7, v6

    iget v8, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textOffset:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 254
    :cond_2
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->maxCountSize:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 255
    .local v1, countLimit:I
    iget-boolean v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLayoutRTL:Z

    if-eqz v7, :cond_3

    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int/2addr v7, v1

    :goto_3
    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleX:I

    .line 256
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleY:I

    .line 257
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    iget v8, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleLenLimit:I

    .line 258
    iget-boolean v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLayoutRTL:Z

    if-eqz v7, :cond_4

    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    :goto_4
    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countX:I

    .line 259
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countY:I

    .line 260
    iput v1, v5, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countLenLimit:I

    goto :goto_2

    .line 255
    :cond_3
    iget v7, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    goto :goto_3

    .line 258
    :cond_4
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    sub-int/2addr v7, v1

    goto :goto_4
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 3
    .parameter "textSize"
    .parameter "color"
    .parameter "isBold"

    .prologue
    const/4 v2, 0x1

    .line 118
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 119
    .local v0, paint:Landroid/text/TextPaint;
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    :cond_0
    return-object v0
.end method

.method private hasEnoughSpace(II)Z
    .locals 3
    .parameter "titleWidth"
    .parameter "countWidth"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 235
    .local v0, s:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    iget v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int/2addr v1, p1

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textOffset:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearRecycledLabels()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 271
    :cond_0
    return-void
.end method

.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 267
    return-void
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
    .parameter "title"
    .parameter "count"
    .parameter "sourceType"
    .parameter "styleType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 149
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
