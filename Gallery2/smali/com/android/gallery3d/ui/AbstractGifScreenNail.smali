.class public abstract Lcom/android/gallery3d/ui/AbstractGifScreenNail;
.super Ljava/lang/Object;
.source "AbstractGifScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    }
.end annotation


# static fields
.field private static final ACTIVATED:I = 0x8

.field private static final DEQUEUE:I = 0x2

.field private static final ENQUEUE:I = 0x4

.field private static final FREE:I = 0x1

.field private static final QUEUE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGifTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 104
    return-void
.end method

.method private acquire()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 68
    .local v0, entry:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 72
    const/16 v3, 0x8

    iput v3, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    .line 74
    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mGifTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 75
    .local v2, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 77
    .local v1, head:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    iget-object v3, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mGifTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 78
    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 80
    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    if-eq v3, v1, :cond_0

    .line 84
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    goto :goto_0

    .line 87
    .end local v1           #head:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    .end local v2           #texture:Lcom/android/gallery3d/ui/BitmapTexture;
    :cond_3
    iget-object v0, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 88
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    if-ne v0, v3, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public dequeue(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x2

    .line 31
    iget-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    if-nez v3, :cond_0

    .line 32
    new-instance v3, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    invoke-direct {v3, p1, p2}, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;-><init>(II)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 33
    new-instance v2, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    invoke-direct {v2, p1, p2}, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;-><init>(II)V

    .line 34
    .local v2, tem:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    iget-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    iput-object v3, v2, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 35
    iget-object v3, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    iput-object v2, v3, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 38
    .end local v2           #tem:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 40
    .local v0, entry:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 41
    iget v3, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 42
    iput v5, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->ensureBitmap(II)V

    .line 44
    iget-object v3, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    :goto_1
    return-object v3

    .line 46
    :cond_1
    iget-object v0, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public drawGifIfNecessary(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->acquire()V

    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mGifTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 23
    .local v0, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 27
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enqueue(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 54
    .local v0, entry:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 56
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, p1, :cond_1

    iget v1, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 57
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    .line 63
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 93
    .local v0, entry:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
    iput-object v2, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mGifTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 94
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->recycle()V

    .line 97
    iget-object v0, v0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    .line 99
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    if-ne v0, v1, :cond_0

    .line 101
    :cond_1
    iput-object v2, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->mHead:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

    goto :goto_0
.end method
