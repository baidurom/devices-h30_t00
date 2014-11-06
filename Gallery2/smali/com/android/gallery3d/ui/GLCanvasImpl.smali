.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLCanvasImpl$1;,
        Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;,
        Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F = null

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/android/gallery3d/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 55
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 59
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 61
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 74
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 75
    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 76
    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 79
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 93
    new-instance v0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLCanvasImpl;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 147
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "texture"

    .prologue
    .line 459
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 463
    :goto_0
    return v1

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result v0

    .line 461
    .local v0, target:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 462
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 463
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .parameter "gl11ep"

    .prologue
    .line 897
    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 898
    .local v1, status:I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 899
    const-string v0, ""

    .line 900
    .local v0, msg:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 923
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 903
    goto :goto_0

    .line 905
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 906
    goto :goto_0

    .line 908
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 909
    goto :goto_0

    .line 911
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 912
    goto :goto_0

    .line 914
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 915
    goto :goto_0

    .line 917
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 918
    goto :goto_0

    .line 920
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 925
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 900
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 427
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    .line 428
    .local v3, width:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 429
    .local v0, height:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 430
    .local v2, texWidth:I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 432
    .local v1, texHeight:I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 433
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 434
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 435
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 438
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 439
    .local v4, xBound:F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 440
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 442
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 444
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 445
    .local v5, yBound:F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 446
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 448
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 450
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 9
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v7, 0x3f00

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 358
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    .line 372
    :cond_0
    :goto_1
    return-void

    .line 354
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    .line 363
    .local v6, points:[F
    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    .line 364
    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    .line 365
    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 366
    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 367
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 369
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIIIF)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 553
    const v1, 0x3c23d70a

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 554
    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 557
    int-to-float v2, p4

    int-to-float v3, p5

    int-to-float v4, p6

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 564
    iget-object v8, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 565
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 569
    move/from16 v0, p8

    invoke-direct {p0, p2, p3, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setMixedColor(IFF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 571
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 572
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 561
    .end local v8           #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V
    .locals 2
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 382
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawBoundTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    goto :goto_0

    .line 384
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 805
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 806
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 154
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    .line 155
    .local v2, size:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 156
    .local v3, xyBuffer:Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/android/gallery3d/ui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    new-array v1, v9, [I

    .line 159
    .local v1, name:[I
    invoke-static {v9, v1, v6}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 160
    aget v4, v1, v6

    iput v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    .line 162
    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 163
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 167
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 168
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 171
    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 172
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 173
    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 174
    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 177
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 582
    const v0, 0x3727c5ac

    .line 583
    .local v0, eps:F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .parameter "m"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 326
    .local v0, r:[F
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    .line 327
    .local v3, x3:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    .line 328
    .local v5, y3:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    .line 329
    .local v1, w3:F
    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    .line 330
    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    .line 333
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    .line 334
    .local v4, x4:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    .line 335
    .local v6, y4:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    .line 336
    .local v2, w4:F
    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    .line 337
    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    .line 339
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 811
    .local v0, result:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    iget-object v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 814
    .end local v0           #result:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;-><init>(Lcom/android/gallery3d/ui/GLCanvasImpl$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 849
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 11
    .parameter "toColor"
    .parameter "ratio"
    .parameter "alpha"

    .prologue
    const v10, 0x47057500

    const/high16 v5, 0x3f80

    const v9, 0x44408000

    const v8, 0x47057600

    const/16 v7, 0x2300

    .line 485
    sub-float v4, v5, p2

    mul-float v1, p3, v4

    .line 486
    .local v1, combo:F
    mul-float v4, p3, p2

    sub-float/2addr v5, v1

    div-float v3, v4, v5

    .line 491
    .local v3, scale:F
    ushr-int/lit8 v4, p1, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v5, 0x477e0100

    div-float v0, v4, v5

    .line 492
    .local v0, colorScale:F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v0

    and-int/lit16 v6, p1, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 495
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 496
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v4, 0x2201

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    const/4 v6, 0x0

    invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 498
    const v4, 0x8571

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 499
    const v4, 0x8572

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 500
    const v4, 0x8581

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 501
    const v4, 0x8591

    const/high16 v5, 0x4440

    invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 502
    const v4, 0x8589

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 503
    const v4, 0x8599

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 506
    const v4, 0x8582

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 507
    const v4, 0x8592

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 510
    const v4, 0x858a

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 511
    const v4, 0x859a

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 513
    return-void
.end method

.method private setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 853
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 855
    .local v0, gl11ep:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 856
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-static {v3, v2, v5}, Lcom/android/gallery3d/ui/GLId;->glGenBuffers(I[II)V

    .line 857
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 861
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 862
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 865
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 866
    if-nez p1, :cond_2

    .line 867
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 880
    :goto_0
    return-void

    .line 869
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 871
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 873
    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 878
    invoke-static {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureColor:[F

    .line 468
    .local v0, color:[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 469
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 470
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 471
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 472
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 718
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 719
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 720
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 721
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 724
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 725
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 726
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 727
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 713
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 714
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .parameter "mTextureTransform"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 731
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 733
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 272
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 274
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 276
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 277
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 280
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 281
    return-void
.end method


# virtual methods
.method public beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->save()V

    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 894
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->clearBuffer([F)V

    .line 710
    return-void
.end method

.method public clearBuffer([F)V
    .locals 5
    .parameter "argb"

    .prologue
    const/4 v2, 0x0

    .line 699
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 704
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 705
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 750
    monitor-exit v1

    .line 751
    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 755
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    .line 757
    .local v0, ids:Lcom/android/gallery3d/util/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 759
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 763
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 765
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 767
    :cond_1
    monitor-exit v2

    .line 768
    return-void

    .line 767
    .end local v0           #ids:Lcom/android/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 201
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 204
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 206
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 208
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 209
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 211
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 212
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 213
    return-void
.end method

.method public drawMesh(Lcom/android/gallery3d/ui/BasicTexture;IIIIII)V
    .locals 8
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 286
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 287
    .local v0, alpha:F
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 295
    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 297
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 298
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 308
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 312
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 316
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 317
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 289
    goto :goto_1
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 455
    iget v8, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIIIF)V

    .line 456
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 518
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    .line 521
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 523
    :cond_2
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    .line 524
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 528
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 531
    .local v6, alpha:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 533
    iget-object p4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 534
    iget-object p5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 536
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 539
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 543
    invoke-direct {p0, p2, p3, v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setMixedColor(IFF)V

    .line 544
    invoke-static {p4, p5, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 545
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 546
    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 536
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 183
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 186
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 188
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 191
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 193
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 194
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 195
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 377
    iget v6, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvasImpl;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIIIF)V

    .line 378
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 398
    iget-object p2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 399
    iget-object p3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {p2, p3, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 405
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 407
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 401
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V
    .locals 4
    .parameter "texture"
    .parameter "mTextureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 415
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    :goto_1
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setTextureCoords([F)V

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 418
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 832
    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, line:Ljava/lang/String;
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawMesh:I

    .line 837
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureRect:I

    .line 838
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountTextureOES:I

    .line 839
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    .line 840
    iput v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountDrawLine:I

    .line 841
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public endRenderTarget()V
    .locals 3

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    .line 885
    .local v0, texture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 886
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restore()V

    .line 887
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGLState:Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 220
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->saveTransform()V

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->translate(FF)V

    .line 222
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->scale(FFF)V

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 225
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->restoreTransform()V

    .line 228
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mCountFillRect:I

    .line 229
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 142
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 143
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 144
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .line 265
    .local v0, temp:[F
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 266
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    .line 799
    .local v0, config:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->restore(Lcom/android/gallery3d/ui/GLCanvasImpl;)V

    .line 800
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->freeRestoreConfig(Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;)V

    .line 801
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 255
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTempMatrix:[F

    .local v0, temp:[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 257
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 258
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 259
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 772
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->save(I)V

    .line 773
    return-void
.end method

.method public save(I)V
    .locals 5
    .parameter "saveFlags"

    .prologue
    const/4 v4, 0x0

    .line 777
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->obtainRestoreConfig()Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 779
    .local v0, config:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 780
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 786
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    return-void

    .line 782
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 789
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 251
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 131
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 132
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 133
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 99
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    .line 102
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenWidth:I

    .line 103
    iput p2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mScreenHeight:I

    .line 105
    :cond_0
    iput v9, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mAlpha:F

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 108
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v8, v8, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 109
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 110
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 111
    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v2, :cond_3

    .line 112
    int-to-float v2, p1

    int-to-float v4, p2

    const/high16 v5, -0x3b86

    const/high16 v6, 0x447a

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL11;->glOrthof(FFFFFF)V

    .line 117
    :goto_1
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 118
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 120
    iget-object v7, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 121
    .local v7, matrix:[F
    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 123
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mTargetTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_1

    .line 124
    int-to-float v2, p2

    invoke-static {v7, v8, v1, v2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 125
    const/high16 v1, -0x4080

    invoke-static {v7, v8, v9, v1, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 127
    :cond_1
    return-void

    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v7           #matrix:[F
    :cond_2
    move v2, v8

    .line 99
    goto :goto_0

    .line 114
    .restart local v0       #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_3
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v1, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1
.end method

.method public translate(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    .line 242
    .local v0, m:[F
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 243
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 244
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 245
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 246
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 234
    return-void
.end method

.method public unloadTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 740
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 742
    :goto_0
    return v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 742
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
