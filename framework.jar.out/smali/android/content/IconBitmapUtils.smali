.class public Landroid/content/IconBitmapUtils;
.super Ljava/lang/Object;
.source "IconBitmapUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static VALID_TRANSPARENCY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "IconBitmapUtils"

    sput-object v0, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x32

    sput v0, Landroid/content/IconBitmapUtils;->VALID_TRANSPARENCY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTransparency(I)Z
    .locals 2
    .parameter "argb"

    .prologue
    .line 247
    ushr-int/lit8 v0, p0, 0x18

    sget v1, Landroid/content/IconBitmapUtils;->VALID_TRANSPARENCY:I

    if-lt v0, v1, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 171
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 172
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .restart local p0
    :goto_0
    return-object v0

    .line 175
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 181
    .local v2, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRectWithoutEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 12
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 229
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 230
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 231
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 232
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidTop([III)I

    move-result v11

    .line 233
    .local v11, top:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidBottom([III)I

    move-result v8

    .line 234
    .local v8, bottom:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidLeft([III)I

    move-result v9

    .line 235
    .local v9, left:I
    invoke-static {v1, v3, v7}, Landroid/content/IconBitmapUtils;->getValidRight([III)I

    move-result v10

    .line 236
    .local v10, right:I
    if-ge v9, v10, :cond_0

    if-ge v11, v8, :cond_0

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v11, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getValidBottom([III)I
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 274
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    div-int/lit8 v4, p1, 0x2

    add-int/lit8 v2, v4, -0x1

    .line 275
    .local v2, mid_w:I
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 276
    mul-int v3, v0, p1

    .line 277
    .local v3, y:I
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 278
    add-int v4, v3, v1

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_0
    :goto_3
    return v0

    .line 274
    .end local v2           #mid_w:I
    :cond_1
    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    .line 277
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_w:I
    .restart local v3       #y:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 275
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 283
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static getValidLeft([III)I
    .locals 4
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 290
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v2, v3, -0x1

    .line 291
    .local v2, mid_h:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 292
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 294
    mul-int v3, v1, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    :goto_3
    return v0

    .line 290
    .end local v2           #mid_h:I
    :cond_1
    div-int/lit8 v2, p2, 0x2

    goto :goto_0

    .line 292
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_h:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 291
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #j:I
    :cond_4
    move v0, p1

    .line 300
    goto :goto_3
.end method

.method private static getValidRight([III)I
    .locals 4
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 307
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v2, v3, -0x1

    .line 308
    .local v2, mid_h:I
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 309
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 311
    mul-int v3, v1, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aget v3, p0, v3

    invoke-static {v3}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    :goto_3
    return v0

    .line 307
    .end local v2           #mid_h:I
    :cond_1
    div-int/lit8 v2, p2, 0x2

    goto :goto_0

    .line 309
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_h:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 308
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 317
    .end local v1           #j:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static getValidTop([III)I
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 258
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    div-int/lit8 v4, p1, 0x2

    add-int/lit8 v2, v4, -0x1

    .line 259
    .local v2, mid_w:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 260
    mul-int v3, v0, p1

    .line 261
    .local v3, y:I
    move v1, v2

    .local v1, j:I
    :goto_2
    if-ltz v1, :cond_3

    .line 262
    add-int v4, v3, v1

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    aget v4, p0, v4

    invoke-static {v4}, Landroid/content/IconBitmapUtils;->checkTransparency(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #y:I
    :cond_0
    :goto_3
    return v0

    .line 258
    .end local v2           #mid_w:I
    :cond_1
    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    .line 261
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #mid_w:I
    .restart local v3       #y:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 259
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #j:I
    .end local v3           #y:I
    :cond_4
    move v0, p2

    .line 267
    goto :goto_3
.end method

.method public static mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "bmpSrc"
    .parameter "bmpMask"

    .prologue
    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    const/4 v9, 0x0

    .line 99
    :goto_0
    return-object v9

    .line 49
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 51
    .local v9, newBitMap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 52
    .local v4, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 53
    .local v8, h:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 54
    .local v21, wMask:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 56
    .local v18, hMask:I
    const/4 v5, 0x0

    .line 57
    .local v5, srcStartX:I
    const/4 v6, 0x0

    .line 59
    .local v6, srcStartY:I
    move/from16 v0, v21

    if-le v4, v0, :cond_2

    .line 60
    sub-int v1, v4, v21

    div-int/lit8 v5, v1, 0x2

    .line 61
    move/from16 v4, v21

    .line 63
    :cond_2
    move/from16 v0, v18

    if-le v8, v0, :cond_3

    .line 64
    sub-int v1, v8, v18

    div-int/lit8 v6, v1, 0x2

    .line 65
    move/from16 v8, v18

    .line 69
    :cond_3
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 70
    .local v2, srcPixels:[I
    mul-int v1, v4, v8

    new-array v10, v1, [I

    .line 72
    .local v10, maskPixels:[I
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 74
    const/4 v11, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 77
    mul-int v1, v4, v8

    add-int/lit8 v20, v1, -0x1

    .local v20, i:I
    :goto_1
    if-ltz v20, :cond_4

    .line 78
    aget v1, v10, v20

    ushr-int/lit8 v1, v1, 0x18

    aget v3, v2, v20

    ushr-int/lit8 v3, v3, 0x18

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget v3, v2, v20

    const v7, 0xffffff

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    aput v1, v10, v20

    .line 77
    add-int/lit8 v20, v20, -0x1

    goto :goto_1

    .line 83
    :cond_4
    const/4 v11, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 84
    mul-int v1, v21, v18

    new-array v12, v1, [I

    .line 85
    .local v12, mask:[I
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v21

    move/from16 v17, v21

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v18, v8

    div-int/lit8 v17, v1, 0x2

    move/from16 v13, v21

    move/from16 v16, v21

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 87
    const/4 v14, 0x0

    add-int v1, v18, v8

    div-int/lit8 v15, v1, 0x2

    move/from16 v13, v21

    move/from16 v16, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 88
    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v21, v4

    div-int/lit8 v16, v1, 0x2

    move/from16 v13, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 89
    add-int v1, v21, v4

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x0

    move/from16 v13, v21

    move/from16 v16, v21

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    .line 90
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v21

    move/from16 v17, v21

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 92
    .end local v2           #srcPixels:[I
    .end local v4           #w:I
    .end local v5           #srcStartX:I
    .end local v6           #srcStartY:I
    .end local v8           #h:I
    .end local v10           #maskPixels:[I
    .end local v12           #mask:[I
    .end local v18           #hMask:I
    .end local v20           #i:I
    .end local v21           #wMask:I
    :catch_0
    move-exception v19

    .line 94
    .local v19, e:Ljava/lang/RuntimeException;
    if-eqz v9, :cond_5

    .line 95
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmpSrc"
    .parameter "bmpBg"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {p0, p1, v0, v0}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bmpSrc"
    .parameter "bmpBg"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v4, 0x0

    .line 118
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v4

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 122
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 123
    .local v1, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 124
    .local v7, wBg:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 125
    .local v2, hBg:I
    if-gt v6, v7, :cond_2

    if-le v1, v2, :cond_3

    .line 126
    :cond_2
    sget-object v9, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The size of background("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") little than the source bitmap("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 130
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 132
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    sub-int v9, v7, v6

    shr-int/lit8 v9, v9, 0x1

    add-int v8, v9, p2

    .line 138
    .local v8, wMargin:I
    sub-int v9, v2, v1

    shr-int/lit8 v9, v9, 0x1

    add-int v3, v9, p3

    .line 139
    .local v3, hMargin:I
    int-to-float v9, v8

    int-to-float v10, v3

    invoke-virtual {v0, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    monitor-exit v0

    goto :goto_0

    .end local v3           #hMargin:I
    .end local v8           #wMargin:I
    :catchall_0
    move-exception v9

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static setTransparent([IIIIII)V
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, pos:I
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 107
    move v1, p2

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_0

    .line 108
    mul-int v3, v0, p1

    add-int v2, v3, v1

    .line 109
    aget v3, p0, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public static zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"
    .parameter "standardSize"
    .parameter "recycledWhenScaled"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 157
    .local v2, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 159
    .local v0, h:I
    if-ne v2, p1, :cond_0

    if-eq v0, p1, :cond_2

    .line 161
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v1

    .line 167
    .end local v1           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local p0
    :cond_2
    return-object p0
.end method

.method public static zoomWithoutEdge(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bmp"
    .parameter "defaultSize"
    .parameter "minSize"
    .parameter "targetSize"

    .prologue
    const-wide/high16 v10, 0x3ff0

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 195
    .local v5, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 197
    .local v0, h:I
    if-ge v5, p2, :cond_0

    if-lt v0, p2, :cond_1

    :cond_0
    if-gez p3, :cond_2

    .line 215
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 201
    .restart local p0
    :cond_2
    move v1, p1

    .line 202
    .local v1, iconSize:I
    invoke-static {p0}, Landroid/content/IconBitmapUtils;->getRectWithoutEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    .line 203
    .local v2, rec:Landroid/graphics/Rect;
    if-eqz v2, :cond_3

    .line 204
    const-wide/16 v3, 0x0

    .line 205
    .local v3, validSize:D
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 206
    int-to-double v6, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    int-to-double v8, v0

    mul-double v3, v6, v8

    .line 210
    :goto_1
    double-to-int v1, v3

    .line 211
    const/4 v6, 0x1

    rem-int/lit8 v7, v1, 0x2

    if-ne v6, v7, :cond_3

    .line 212
    const-wide/high16 v6, 0x3fe0

    add-double/2addr v6, v3

    double-to-int v1, v6

    .line 215
    .end local v3           #validSize:D
    :cond_3
    const/4 v6, 0x0

    invoke-static {p0, v1, v6}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 208
    .restart local v3       #validSize:D
    :cond_4
    int-to-double v6, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    int-to-double v8, v5

    mul-double v3, v6, v8

    goto :goto_1
.end method
