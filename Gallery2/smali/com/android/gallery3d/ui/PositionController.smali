.class Lcom/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PositionController$1;,
        Lcom/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/android/gallery3d/ui/PositionController$Gap;,
        Lcom/android/gallery3d/ui/PositionController$Box;,
        Lcom/android/gallery3d/ui/PositionController$Platform;,
        Lcom/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_DELETE_SNAPBACK:I = 0xa

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I = null

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I = null

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

#the value of this static final field might be set in the static constructor
.field private static final HORIZONTAL_SLACK:I = 0x0

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_GAP:I = 0x0

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 2.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PositionController"


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/Scroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mIsDeleteSnapBack:Z

.field private mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 110
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 112
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 113
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 219
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 220
    :cond_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v1           #j:I
    :cond_1
    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x3

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 99
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 123
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 124
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 183
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 184
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 187
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 188
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    .line 191
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 192
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 196
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    .line 225
    iput-object p2, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    .line 226
    new-instance v1, Lcom/android/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    .line 227
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    .line 230
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 231
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v3, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PositionController;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2300()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PositionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1408
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1382
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1385
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1386
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1389
    .local v1, h:I
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1390
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1391
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1392
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1397
    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1401
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1402
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1404
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 605
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 612
    :goto_0
    :sswitch_0
    return v1

    .line 606
    :cond_0
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 612
    goto :goto_0

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10
    .parameter "i"

    .prologue
    .line 942
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 943
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 944
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 945
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 946
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 947
    .local v3, h:I
    if-nez p1, :cond_0

    .line 948
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 949
    .local v6, x:I
    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 950
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 962
    .end local v6           #x:I
    :goto_0
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 963
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 964
    return-void

    .line 951
    :cond_0
    if-lez p1, :cond_1

    .line 952
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 953
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 954
    .local v2, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 955
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 957
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 958
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 959
    .restart local v2       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 960
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private debugMoveBox([I)V
    .locals 5
    .parameter "fromIndex"

    .prologue
    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1035
    aget v1, p1, v0

    .line 1036
    .local v1, j:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 1037
    const-string v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1043
    .end local v1           #j:I
    :cond_1
    const-string v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method private dumpRect(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 928
    .local v0, r:Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 933
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 937
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v2, "PositionController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 908
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 909
    const-string v3, "PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 913
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->dumpRect(I)V

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 916
    :cond_1
    const/4 v0, -0x3

    :goto_2
    if-gt v0, v5, :cond_4

    .line 917
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_3
    if-gt v1, v5, :cond_3

    .line 918
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 919
    const-string v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 916
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 923
    .end local v1           #j:I
    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 438
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 419
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 422
    :goto_0
    return v2

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 421
    .local v0, a:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 422
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 2
    .parameter "b"

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    .line 1357
    :goto_0
    return v0

    .line 1356
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1357
    :cond_1
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->getScaleLimit(II)F

    move-result v0

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 8
    .parameter "b"

    .prologue
    .line 1326
    const/high16 v4, 0x3f80

    .line 1327
    .local v4, wFactor:F
    const/high16 v0, 0x3f80

    .line 1330
    .local v0, hFactor:F
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 1332
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1333
    .local v3, viewW:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1339
    .local v2, viewH:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v5, :cond_0

    .line 1340
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-le v5, v6, :cond_2

    .line 1341
    const v4, 0x3f333333

    .line 1342
    const v0, 0x3ef5c28f

    .line 1349
    :cond_0
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1351
    .local v1, s:F
    iget v5, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v6, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    invoke-virtual {p0, v5, v6}, Lcom/android/gallery3d/ui/PositionController;->getScaleLimit(II)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5

    .line 1335
    .end local v1           #s:F
    .end local v2           #viewH:I
    .end local v3           #viewW:I
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 1336
    .restart local v3       #viewW:I
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .restart local v2       #viewH:I
    goto :goto_0

    .line 1344
    :cond_2
    const v4, 0x3f333333

    .line 1345
    const v0, 0x3f333333

    goto :goto_1
.end method

.method private getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1419
    iget-wide v0, p1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 881
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 891
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 986
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 987
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 988
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 989
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 990
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 991
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 992
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 993
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 994
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 995
    return-void
.end method

.method private initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 999
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 1000
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 1013
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1004
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 1005
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 1006
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1007
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1008
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1009
    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1010
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1011
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1012
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1019
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1020
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1021
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1022
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1026
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1027
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1028
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1029
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 978
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 979
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 980
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 981
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1361
    sub-float v0, p0, p1

    .line 1362
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 900
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 901
    sget-object v1, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 817
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 818
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 310
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 313
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    iput-boolean p4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 317
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    .line 328
    :cond_2
    if-le p2, p3, :cond_6

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 332
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 333
    iput p3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 338
    if-eqz v2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v3, :cond_7

    .line 339
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 340
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 347
    :goto_2
    if-nez p1, :cond_5

    .line 348
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 349
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 352
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 328
    .end local v1           #ratio:F
    :cond_6
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 342
    .restart local v1       #ratio:F
    :cond_7
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 343
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 344
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 821
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 822
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 826
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 829
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 830
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 836
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 837
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 838
    :cond_0
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 356
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 358
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 361
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 362
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 364
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 365
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 366
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 368
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 373
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 374
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 375
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 376
    iget v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 379
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 404
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 406
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 407
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 411
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 412
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1411
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1415
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 876
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 886
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 844
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_0
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 851
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 852
    :cond_2
    return-void
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 514
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 515
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 516
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 517
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 518
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 519
    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 520
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 521
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 575
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 730
    if-nez p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return v2

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 733
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 736
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 737
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v12

    .line 745
    .local v12, targetX:I
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .parameter "boxIndex"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x8

    .line 753
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 756
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 758
    .local v3, h:I
    const/4 v0, 0x3

    .line 759
    .local v0, FUZZY:I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 760
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 767
    .local v4, targetY:I
    :goto_0
    if-eqz p2, :cond_2

    .line 768
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 770
    .local v2, duration:I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 776
    :goto_1
    sget-object v5, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 777
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 778
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 781
    .end local v2           #duration:I
    :goto_2
    return v2

    .line 762
    .end local v4           #targetY:I
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4       #targetY:I
    goto :goto_0

    .line 772
    :cond_2
    const/16 v2, 0xc8

    .restart local v2       #duration:I
    goto :goto_1

    .line 781
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 699
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 702
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x0

    .line 726
    :goto_0
    return v0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 710
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 712
    :cond_2
    const/4 p1, 0x0

    .line 714
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 716
    :cond_5
    const/16 p2, 0x0

    .line 719
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 721
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 724
    .local v12, targetX:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 725
    .local v13, targetY:I
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 726
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 284
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 286
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 287
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1274
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1275
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 1276
    .local v2, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, edges:I
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1279
    or-int/lit8 v1, v1, 0x2

    .line 1281
    :cond_0
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1282
    or-int/lit8 v1, v1, 0x1

    .line 1284
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1285
    or-int/lit8 v1, v1, 0x8

    .line 1287
    :cond_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1288
    or-int/lit8 v1, v1, 0x4

    .line 1290
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1265
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1270
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    return v1
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1260
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaleLimit(II)F
    .locals 6
    .parameter "imageW"
    .parameter "imageH"

    .prologue
    const/high16 v5, 0x4000

    .line 555
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    .line 556
    .local v0, minViewLength:F
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v2, v3

    .line 557
    .local v2, x:F
    const/4 v1, 0x0

    .line 559
    .local v1, scaleLimit:F
    div-float v3, v0, v5

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 560
    const/high16 v1, 0x4000

    .line 567
    :goto_0
    return v1

    .line 561
    :cond_0
    div-float v3, v0, v5

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    mul-float v3, v0, v5

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 562
    const v3, 0x3f2aaaab

    mul-float v4, v5, v0

    const/high16 v5, 0x4040

    mul-float/2addr v5, v2

    div-float/2addr v4, v5

    add-float v1, v3, v4

    goto :goto_0

    .line 564
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1313
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1315
    const/4 v1, 0x1

    .line 1318
    :goto_1
    return v1

    .line 1313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 789
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 790
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 791
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 792
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 797
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 789
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public inDeleteSnapBackAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1249
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1253
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1254
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 19
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"

    .prologue
    .line 1066
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1067
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1069
    new-instance v7, Lcom/android/gallery3d/util/RangeIntArray;

    const/16 v17, -0x3

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/android/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1072
    .local v7, from:Lcom/android/gallery3d/util/RangeIntArray;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1073
    const/4 v9, -0x3

    .local v9, i:I
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_0

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1075
    .local v4, b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1076
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1073
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1080
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_0
    const/4 v9, -0x3

    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1080
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1084
    :cond_1
    const/4 v9, -0x3

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1084
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1090
    :cond_2
    const/4 v9, -0x3

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_4

    .line 1091
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1092
    .local v10, j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    .line 1090
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1093
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1098
    .end local v10           #j:I
    :cond_4
    const/4 v9, -0x3

    :goto_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 1099
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1100
    .restart local v10       #j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    .line 1098
    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1101
    :cond_6
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1102
    .local v11, k:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v11, v0, :cond_5

    .line 1103
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_5

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1110
    .end local v10           #j:I
    .end local v11           #k:I
    :cond_7
    const/4 v11, -0x3

    .line 1111
    .restart local v11       #k:I
    const/4 v9, -0x3

    :goto_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_a

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1111
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1113
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_9

    .line 1114
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1116
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1117
    add-int/lit8 v17, v9, 0x3

    aget-object v17, p5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/gallery3d/ui/PositionController;->initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_8

    .line 1125
    :cond_a
    const/4 v6, -0x3

    .local v6, first:I
    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v6, v0, :cond_b

    .line 1126
    invoke-virtual {v7, v6}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 1128
    :cond_b
    const/4 v13, 0x3

    .local v13, last:I
    :goto_b
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v13, v0, :cond_c

    .line 1129
    invoke-virtual {v7, v13}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1133
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v6, v0, :cond_d

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1135
    const/4 v13, 0x0

    move v6, v13

    .line 1143
    :cond_d
    const/16 v17, 0x0

    add-int/lit8 v18, v6, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_c
    if-ge v9, v13, :cond_12

    .line 1144
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1143
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 1125
    .end local v13           #last:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1128
    .restart local v13       #last:I
    :cond_f
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1145
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1146
    .local v3, a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1147
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1148
    .local v15, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1149
    .local v16, wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_d

    .line 1154
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_d

    .line 1159
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_12
    const/16 v17, -0x1

    add-int/lit8 v18, v13, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_e
    if-le v9, v6, :cond_15

    .line 1160
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1159
    :goto_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 1161
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1162
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1163
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1164
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1165
    .restart local v16       #wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1167
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1170
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1175
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_15
    const/4 v11, -0x3

    .line 1176
    const/4 v9, -0x3

    :goto_10
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_19

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 1176
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1178
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_17

    .line 1179
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1181
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1183
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1184
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1185
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1186
    .restart local v16       #wb:I
    if-lt v9, v6, :cond_18

    if-ge v9, v13, :cond_18

    .line 1187
    iget v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    sub-int v8, v17, v18

    .line 1188
    .local v8, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/gallery3d/ui/PositionController;->initGap(II)V

    move v11, v12

    .line 1189
    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1190
    .end local v8           #g:I
    .end local v11           #k:I
    .restart local v12       #k:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_11

    .line 1196
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_19
    add-int/lit8 v9, v6, -0x1

    :goto_13
    const/16 v17, -0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_1a

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1198
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1199
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1200
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1201
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1202
    .local v8, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1196
    add-int/lit8 v9, v9, -0x1

    goto :goto_13

    .line 1205
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1a
    add-int/lit8 v9, v13, 0x1

    :goto_14
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1b

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1207
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1208
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v15

    .line 1209
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1210
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1211
    .restart local v8       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    iget v0, v8, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1205
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 1215
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v8           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1216
    .local v5, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_1c

    .line 1222
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1224
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1228
    :cond_1c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z

    .line 1229
    const/4 v9, -0x3

    :goto_15
    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v9, v0, :cond_1f

    .line 1230
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1231
    .restart local v10       #j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_1e

    .line 1229
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 1232
    :cond_1e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z

    .line 1233
    if-nez v10, :cond_1d

    .line 1234
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z

    .line 1238
    .end local v10           #j:I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1239
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z

    .line 1241
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 510
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 511
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 529
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 530
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 531
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 532
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 539
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 540
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 541
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 542
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 543
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 545
    :cond_0
    :goto_2
    return v4

    .line 540
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 541
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 544
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 545
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 654
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 657
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 661
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 662
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 672
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 676
    .local v2, x:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 677
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 678
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 679
    const/4 v2, 0x0

    .line 684
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 685
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 680
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 682
    const/4 v2, 0x0

    goto :goto_1

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .parameter "boxIndex"
    .parameter "dy"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 692
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 693
    .local v1, y:I
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 694
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 616
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 651
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 619
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 621
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 623
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 624
    .local v3, x:I
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 628
    .local v4, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 629
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 630
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 636
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 640
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 641
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 642
    .local v2, pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 643
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 650
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 631
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 632
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 644
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 645
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 646
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 647
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 280
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 395
    if-nez p1, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 387
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 388
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 389
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 292
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x0

    .line 295
    .local v0, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_2
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 304
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 244
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 1309
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    .line 1310
    return-void
.end method

.method public setViewSize(II)V
    .locals 5
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 247
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 251
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 252
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 253
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 255
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 256
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 263
    if-eqz v2, :cond_3

    .line 264
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 265
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 270
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 453
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v3, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 455
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 456
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v5, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 458
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 460
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 458
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 462
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 463
    iput-wide v5, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_1

    .line 465
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v7, :cond_4

    .line 466
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 467
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-wide v3, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 465
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 468
    :cond_3
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 469
    iput-wide v5, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_3

    .line 471
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 472
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 480
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 481
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 482
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 476
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 589
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 590
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 591
    .local v2, n:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 593
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    .line 595
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 596
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 597
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 598
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 599
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 581
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 582
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 443
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 444
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 489
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 490
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 491
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 494
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 495
    .local v3, tempX:F
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 497
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 498
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 500
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 501
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 502
    .local v1, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 503
    .local v2, targetY:I
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 505
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 506
    return-void
.end method
