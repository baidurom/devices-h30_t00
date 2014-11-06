.class public Lcom/android/gallery3d/ui/SlotView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/android/gallery3d/ui/SlotView$Layout;,
        Lcom/android/gallery3d/ui/SlotView$Spec;,
        Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;,
        Lcom/android/gallery3d/ui/SlotView$RisingAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DOWN_TIME_OUT:I = 0x0

.field private static final DOWN_TIME_OUT_MARGIN:I = 0x64

.field public static final EVENT_DOWN_TIME_OUT:I = 0x0

.field private static final INDEX_NONE:I = -0x1

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlotView"

.field private static final WIDE:Z


# instance fields
.field private mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

.field private mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

.field private mClickAnimation:Z

.field private mClickThumbDownTransition:Lcom/android/gallery3d/anim/ClickThumbDownTransition;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexDown:I

.field private mIndexUp:I

.field private mIsOnScroll:Z

.field private final mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/android/gallery3d/ui/Paper;

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private final mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

.field private mSlotViewBackTransition:Lcom/android/gallery3d/anim/SlotViewBackTransition;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/gallery3d/ui/SlotView;->DOWN_TIME_OUT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 4
    .parameter "activity"
    .parameter "spec"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/Paper;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/Paper;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    .line 83
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 84
    iput-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/SlotView$Layout;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    .line 86
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 90
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 107
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z

    .line 857
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I

    .line 858
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    .line 859
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z

    .line 110
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 111
    new-instance v0, Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    .line 112
    new-instance v0, Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/gallery3d/anim/ClickThumbDownTransition;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/ClickThumbDownTransition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mClickThumbDownTransition:Lcom/android/gallery3d/anim/ClickThumbDownTransition;

    .line 115
    new-instance v0, Lcom/android/gallery3d/anim/SlotViewBackTransition;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/SlotViewBackTransition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mSlotViewBackTransition:Lcom/android/gallery3d/anim/SlotViewBackTransition;

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 117
    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/ui/SlotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView;->needReverseClickDownAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/ui/SlotView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/SlotView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/SlotView;->startDownAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/ui/SlotView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;)Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/anim/ClickThumbDownTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mClickThumbDownTransition:Lcom/android/gallery3d/anim/ClickThumbDownTransition;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/anim/SlotViewBackTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mSlotViewBackTransition:Lcom/android/gallery3d/anim/SlotViewBackTransition;

    return-object v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .parameter "array"
    .parameter "capacity"

    .prologue
    .line 333
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 334
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 336
    :cond_0
    return-object p0
.end method

.method private hasClickDownAnimation()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    instance-of v0, v0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1091
    return-void
.end method

.method private needReverseClickDownAnimation()Z
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView;->hasClickDownAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->hasReverse()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I
    .locals 9
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    .line 446
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 447
    const-string v0, "anim_texture"

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mTextureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 448
    .local v6, isGetAnimTexture:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 449
    .local v7, rect:Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {v0, v7, v1}, Lcom/android/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 456
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v7}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I

    move-result v8

    .line 461
    .local v8, result:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 462
    return v8

    .line 451
    .end local v8           #result:I
    :cond_2
    if-nez v6, :cond_0

    .line 453
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private startDownAnimation(IZ)V
    .locals 2
    .parameter "index"
    .parameter "reverse"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownAnimation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";reverse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V

    .line 242
    if-eqz p2, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView;->hasClickDownAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->setFillAfter(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->setReverse(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 252
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startSlotViewBackAnimation(I)V
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 270
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    new-instance v1, Lcom/android/gallery3d/ui/SlotView$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/SlotView$1;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->setAnimationListener(Lcom/android/gallery3d/anim/Animation$AnimationListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 279
    :cond_0
    return-void
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 282
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public disableClickAnimation()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z

    .line 134
    return-void
.end method

.method public enableClickAnimation()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z

    .line 130
    return-void
.end method

.method public getAnimRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 147
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 148
    :cond_0
    const-string v1, "SlotView"

    const-string v2, "the up index is wrong, this should not happen"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 151
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 153
    .local v0, rt:Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 5
    .parameter "slotIndex"
    .parameter "rootPane"

    .prologue
    .line 1042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1043
    .local v0, offset:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 1044
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1045
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1047
    return-object v1
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 174
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    const/4 v8, 0x0

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 176
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 177
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getHeight()I

    move-result v6

    .line 178
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 179
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 180
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 182
    .local v3, slotEnd:I
    move v0, v4

    .line 183
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 184
    move v0, v4

    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 192
    return-void

    .line 185
    :cond_1
    if-ge v2, v4, :cond_2

    .line 186
    move v0, v2

    goto :goto_0

    .line 187
    :cond_2
    if-le v3, v5, :cond_0

    .line 188
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 218
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 220
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 222
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 294
    .local v0, limit:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 295
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 316
    :goto_0
    return v1

    .line 307
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 311
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/Paper;->onRelease()V

    .line 313
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 342
    const-string v22, "anim_texture"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GLView;->mTextureType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v23, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v23 .. v23}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v23, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v23 .. v23}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 344
    :cond_0
    const-string v22, "SlotView"

    const-string v23, "the up index is wrong, this should not happen"

    invoke-static/range {v22 .. v23}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    goto :goto_0

    .line 354
    :cond_3
    invoke-super/range {p0 .. p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 359
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    .line 360
    .local v5, animTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v10

    .line 361
    .local v10, more:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v22

    or-int v10, v10, v22

    .line 362
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 363
    .local v14, oldX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 365
    const/4 v15, 0x0

    .line 366
    .local v15, paperActive:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 368
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 369
    .local v13, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v8

    .line 370
    .local v8, limit:I
    if-lez v14, :cond_4

    if-eqz v13, :cond_5

    :cond_4
    if-ge v14, v8, :cond_7

    if-ne v13, v8, :cond_7

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v21

    .line 372
    .local v21, v:F
    if-ne v13, v8, :cond_6

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 375
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-nez v22, :cond_7

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Paper;->edgeReached(F)V

    .line 379
    .end local v21           #v:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v15

    .line 382
    .end local v8           #limit:I
    .end local v13           #newX:I
    :cond_8
    or-int/2addr v10, v15

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v22

    or-int v10, v10, v22

    .line 388
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 390
    const/16 v18, 0x0

    .line 391
    .local v18, requestCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v23, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v23 .. v23}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/android/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v20

    .line 394
    .local v20, requestedSlot:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    add-int/lit8 v7, v22, -0x1

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    move/from16 v0, v22

    if-lt v7, v0, :cond_e

    .line 396
    const-string v22, "fade_texture"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GLView;->mTextureType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v7, v0, :cond_b

    .line 394
    :cond_a
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 401
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mTargetIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v7, v0, :cond_a

    .line 407
    :cond_c
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v7, v2, v15}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v17

    .line 408
    .local v17, r:I
    and-int/lit8 v22, v17, 0x2

    if-eqz v22, :cond_d

    const/4 v10, 0x1

    .line 409
    :cond_d
    and-int/lit8 v22, v17, 0x1

    if-eqz v22, :cond_a

    add-int/lit8 v19, v18, 0x1

    .end local v18           #requestCount:I
    .local v19, requestCount:I
    aput v7, v20, v18

    move/from16 v18, v19

    .end local v19           #requestCount:I
    .restart local v18       #requestCount:I
    goto :goto_2

    .line 413
    .end local v17           #r:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimationTop:Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mTargetIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    .line 417
    :cond_f
    const/16 v16, 0x1

    .local v16, pass:I
    :goto_3
    if-eqz v18, :cond_12

    .line 418
    const/4 v11, 0x0

    .line 419
    .local v11, newCount:I
    const/4 v7, 0x0

    move v12, v11

    .end local v11           #newCount:I
    .local v12, newCount:I
    :goto_4
    move/from16 v0, v18

    if-ge v7, v0, :cond_11

    .line 420
    aget v22, v20, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v17

    .line 422
    .restart local v17       #r:I
    and-int/lit8 v22, v17, 0x2

    if-eqz v22, :cond_10

    const/4 v10, 0x1

    .line 423
    :cond_10
    and-int/lit8 v22, v17, 0x1

    if-eqz v22, :cond_15

    add-int/lit8 v11, v12, 0x1

    .end local v12           #newCount:I
    .restart local v11       #newCount:I
    aput v7, v20, v12

    .line 419
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v12, v11

    .end local v11           #newCount:I
    .restart local v12       #newCount:I
    goto :goto_4

    .line 425
    .end local v17           #r:I
    :cond_11
    move/from16 v18, v12

    .line 417
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 428
    .end local v12           #newCount:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 430
    if-eqz v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 432
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 433
    .local v9, listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    if-nez v10, :cond_14

    if-eqz v9, :cond_14

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/gallery3d/ui/SlotView$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/gallery3d/ui/SlotView$2;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_14
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    .end local v9           #listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    .restart local v12       #newCount:I
    .restart local v17       #r:I
    :cond_15
    move v11, v12

    .end local v12           #newCount:I
    .restart local v11       #newCount:I
    goto :goto_5
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 162
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 166
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 169
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    .line 321
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2
    .parameter "kind"

    .prologue
    const/4 v0, 0x1

    .line 328
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 329
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 330
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 198
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    const/4 v2, -0x1

    .line 1012
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 1015
    .local v0, changed:Z
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 1016
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 1017
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 1020
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 1021
    return v0
.end method

.method public setSlotFilter(I)V
    .locals 0
    .parameter "backIndex"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->startSlotViewBackAnimation(I)V

    .line 143
    return-void
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3
    .parameter "slotDrawer"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 125
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 202
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1007
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 1008
    return-void
.end method

.method public setUserInteractionListener(Lcom/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 325
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 237
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/android/gallery3d/ui/RelativePosition;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 228
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;-><init>(Lcom/android/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 231
    :cond_0
    return-void
.end method
