.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field public static final CLIP_BOUNDS:I = 0x0

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_KEY:Z = false

.field private static final DBG_MOTION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final OPTICAL_BOUNDS:I = 0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutMode:I

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const-string v0, "debug.view.keylog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewGroup;->DBG_KEY:Z

    .line 96
    const-string v0, "debug.view.touchlog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewGroup;->DBG_TOUCH:Z

    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5174
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 433
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5174
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 438
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 439
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 198
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 402
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 428
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5174
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 444
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 445
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 446
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 85
    invoke-static/range {p0 .. p5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5067
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5069
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 5070
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5073
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5074
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3527
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3528
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3529
    .local v1, count:I
    array-length v2, v0

    .line 3530
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 3531
    if-ne v2, v1, :cond_0

    .line 3532
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3533
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3534
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3536
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3554
    :cond_1
    :goto_0
    return-void

    .line 3537
    :cond_2
    if-ge p2, v1, :cond_4

    .line 3538
    if-ne v2, v1, :cond_3

    .line 3539
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3540
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3541
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3542
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3546
    :goto_1
    aput-object p1, v0, p2

    .line 3547
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3548
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 3549
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 3544
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3552
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 2104
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2111
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2112
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2113
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 6
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40

    .line 3458
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_0

    .line 3461
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3464
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3465
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3469
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_2

    .line 3470
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3473
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3474
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3477
    :cond_3
    if-eqz p4, :cond_b

    .line 3478
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3483
    :goto_0
    if-gez p2, :cond_4

    .line 3484
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3487
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3490
    if-eqz p4, :cond_c

    .line 3491
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3496
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3497
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3500
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3501
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3502
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3503
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3504
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3505
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_6

    .line 3506
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3508
    :cond_6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3511
    .end local v1           #lastKeepOn:Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3512
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 3515
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3517
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 3518
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3521
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3522
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3524
    :cond_a
    return-void

    .line 3480
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_b
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3493
    :cond_c
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 3619
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3620
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3621
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 2173
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 2064
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 2065
    const/4 v8, 0x0

    .line 2066
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 2067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2068
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2070
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2071
    const/4 v8, 0x1

    .line 2074
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 2075
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2076
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2074
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2078
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2080
    if-eqz v8, :cond_2

    .line 2081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2084
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 1628
    const/4 v10, 0x0

    .line 1629
    .local v10, predecessor:Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1630
    .local v11, target:Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 1631
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1632
    .local v9, next:Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 1633
    if-nez v10, :cond_1

    .line 1634
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1638
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1641
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1643
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1644
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1645
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1651
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    return-void

    .line 1636
    .restart local v9       #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1648
    :cond_2
    move-object v10, v11

    .line 1649
    move-object v11, v9

    .line 1650
    goto :goto_0
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 2143
    const/4 v10, 0x0

    .line 2144
    .local v10, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2145
    .local v11, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 2146
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2147
    .local v9, next:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 2148
    if-nez v10, :cond_1

    .line 2149
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2153
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2156
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2158
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2159
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2160
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2166
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    return-void

    .line 2151
    .restart local v9       #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2163
    :cond_2
    move-object v10, v11

    .line 2164
    move-object v11, v9

    .line 2165
    goto :goto_0
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 2049
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2050
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 2052
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2053
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2054
    move-object v1, v0

    .line 2055
    if-nez v1, :cond_0

    .line 2056
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2058
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .parameter "event"
    .parameter "child"

    .prologue
    .line 1794
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1795
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1798
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1799
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1800
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1801
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1802
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1803
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1809
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 1805
    .end local v0           #handled:Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1806
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1807
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 10
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 2222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2230
    .local v4, oldAction:I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 2231
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2232
    if-nez p3, :cond_1

    .line 2233
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2237
    .local v0, handled:Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2310
    .end local v0           #handled:Z
    :goto_1
    return v0

    .line 2235
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_0

    .line 2246
    .end local v0           #handled:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2247
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 2251
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_3

    .line 2252
    const-string v7, "ViewGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dispatch transformed touch event without pointers in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v0, 0x0

    goto :goto_1

    .line 2261
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2262
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2263
    :cond_4
    if-nez p3, :cond_5

    .line 2264
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_1

    .line 2266
    .end local v0           #handled:Z
    :cond_5
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2267
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2268
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2270
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2272
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2282
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2288
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2289
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2309
    .restart local v0       #handled:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2284
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_2

    .line 2291
    :cond_8
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2292
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2293
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2294
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2295
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2298
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_3
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIII)V
    .locals 2
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "color"

    .prologue
    .line 2795
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 2796
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2798
    invoke-static {p1, p2, p3, p4}, Landroid/view/ViewGroup;->getDebugLines(IIII)[F

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2799
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1617
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    .line 1618
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1619
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1621
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1622
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1623
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1625
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 4982
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4983
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4985
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4987
    .local v2, size:I
    const/4 v1, 0x0

    .line 4988
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 4990
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 5046
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 4993
    :sswitch_0
    if-ltz p2, :cond_1

    .line 4994
    move v1, p2

    .line 4995
    const/high16 v0, 0x4000

    goto :goto_0

    .line 4996
    :cond_1
    if-ne p2, v8, :cond_2

    .line 4998
    move v1, v2

    .line 4999
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5000
    :cond_2
    if-ne p2, v7, :cond_0

    .line 5003
    move v1, v2

    .line 5004
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5010
    :sswitch_1
    if-ltz p2, :cond_3

    .line 5012
    move v1, p2

    .line 5013
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5014
    :cond_3
    if-ne p2, v8, :cond_4

    .line 5017
    move v1, v2

    .line 5018
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5019
    :cond_4
    if-ne p2, v7, :cond_0

    .line 5022
    move v1, v2

    .line 5023
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5029
    :sswitch_2
    if-ltz p2, :cond_5

    .line 5031
    move v1, p2

    .line 5032
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5033
    :cond_5
    if-ne p2, v8, :cond_6

    .line 5036
    const/4 v1, 0x0

    .line 5037
    const/4 v0, 0x0

    goto :goto_0

    .line 5038
    :cond_6
    if-ne p2, v7, :cond_0

    .line 5041
    const/4 v1, 0x0

    .line 5042
    const/4 v0, 0x0

    goto :goto_0

    .line 4990
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugLines(IIII)[F
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 6475
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 6476
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 6479
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 6480
    add-int/lit8 p3, p3, -0x1

    .line 6482
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6483
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6484
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6485
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6487
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6488
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6489
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6490
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6492
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6493
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6494
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6495
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6497
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6498
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6499
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6500
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6502
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    return-object v0
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 6467
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 6468
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    .line 6469
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6471
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2092
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2096
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 2091
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2096
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 476
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 479
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 480
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 481
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 482
    .local v3, attr:I
    packed-switch v3, :pswitch_data_0

    .line 480
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 487
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 490
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 493
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 496
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 499
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 502
    :pswitch_6
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 503
    .local v5, id:I
    if-lez v5, :cond_0

    .line 504
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 508
    .end local v5           #id:I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 511
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 514
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 515
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_0

    .line 516
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 522
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 523
    return-void

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 454
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 457
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 458
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 459
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 460
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 461
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 463
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 464
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 467
    :cond_1
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 469
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 472
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 473
    return-void
.end method

.method private invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "dirty"

    .prologue
    const v2, 0x8000

    const/4 v3, 0x0

    .line 4335
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 4337
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4339
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4342
    :cond_1
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-eqz v0, :cond_2

    .line 4343
    iget-object v0, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4345
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4346
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    .line 4349
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4353
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 2989
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2990
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2992
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 2993
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2998
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3001
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 3002
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3003
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 3004
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3008
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3009
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "event"

    .prologue
    .line 1732
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3558
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3559
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3560
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3562
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3563
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 3564
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3571
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 3572
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3573
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3577
    :cond_2
    :goto_1
    return-void

    .line 3565
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 3566
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3567
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 3569
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3574
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 3575
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 3581
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3582
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3584
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3586
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3587
    .local v2, end:I
    if-ge v2, p1, :cond_0

    .line 3588
    const-string v4, "ViewGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeFromArray index error end < start, start ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", call stack ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "removeFromArray"

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3589
    move v2, p1

    .line 3592
    :cond_0
    if-ne p1, v2, :cond_1

    .line 3616
    :goto_0
    return-void

    .line 3596
    :cond_1
    if-ne v2, v1, :cond_2

    .line 3597
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 3598
    aget-object v4, v0, v3

    iput-object v8, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3599
    aput-object v8, v0, v3

    .line 3597
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3602
    .end local v3           #i:I
    :cond_2
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 3603
    aget-object v4, v0, v3

    iput-object v8, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3602
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3608
    :cond_3
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3610
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_4

    .line 3611
    aput-object v8, v0, v3

    .line 3610
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3615
    :cond_4
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 2120
    const/4 v1, 0x0

    .line 2121
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2122
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2123
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2124
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2125
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2126
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2127
    if-nez v1, :cond_0

    .line 2128
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2132
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2133
    move-object v2, v0

    .line 2134
    goto :goto_0

    .line 2130
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2137
    :cond_1
    move-object v1, v2

    .line 2138
    move-object v2, v0

    .line 2139
    goto :goto_0

    .line 2140
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 3
    .parameter "index"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3728
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 3729
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3732
    :cond_0
    const/4 v0, 0x0

    .line 3733
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 3734
    invoke-virtual {p2}, Landroid/view/View;->unFocus()V

    .line 3735
    const/4 v0, 0x1

    .line 3738
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3740
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3741
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3743
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3745
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3750
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3751
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3754
    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3756
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3758
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3760
    if-eqz v0, :cond_5

    .line 3761
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3762
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 3765
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3766
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3768
    :cond_6
    return-void

    .line 3746
    :cond_7
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 3747
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3720
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3721
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3722
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3724
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 3804
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3805
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 3806
    .local v2, detach:Z
    :goto_0
    const/4 v1, 0x0

    .line 3808
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3809
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3811
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_7

    .line 3812
    aget-object v6, v0, v5

    .line 3814
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 3815
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3818
    :cond_0
    if-ne v6, v4, :cond_1

    .line 3819
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 3820
    move-object v1, v6

    .line 3823
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3825
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3826
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3828
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3830
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3835
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3836
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3839
    :cond_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3841
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3811
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_5
    move v2, v7

    .line 3805
    goto :goto_0

    .line 3831
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_3

    .line 3832
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 3844
    .end local v6           #view:Landroid/view/View;
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3846
    if-eqz v1, :cond_8

    .line 3847
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3848
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 3850
    :cond_8
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 2035
    if-eqz p0, :cond_0

    .line 2036
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2037
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2038
    const/4 v0, 0x1

    .line 2042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2024
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2025
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2026
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2027
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4703
    if-eqz p2, :cond_0

    .line 4704
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4708
    :goto_0
    return-void

    .line 4706
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1661
    .local p1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 1663
    .local v1, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 1664
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1665
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1666
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1667
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1668
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1675
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childrenCount:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    .restart local v2       #childrenCount:I
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 1677
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 880
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 882
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 883
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 884
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 886
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 887
    aget-object v0, v1, v5

    .line 888
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 889
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 886
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 898
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 901
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 903
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 5348
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 957
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 958
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 960
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 961
    aget-object v0, v1, v3

    .line 962
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 963
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 960
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 966
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3257
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3258
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3275
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3277
    if-nez v0, :cond_0

    .line 3278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3281
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3282
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3295
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3296
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3297
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3298
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3299
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3334
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3336
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3337
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3312
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3313
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3440
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3441
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3442
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3443
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3635
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3637
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 3638
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3639
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3642
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3643
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3644
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 4006
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4008
    if-gez p2, :cond_0

    .line 4009
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4012
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4014
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4015
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4018
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4020
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4021
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4023
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1101
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1102
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1103
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1104
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1106
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 4528
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3356
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childAccessibilityStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1684
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->childAccessibilityStateChanged(Landroid/view/View;)V

    .line 1687
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5356
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 5357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5359
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .parameter "child"
    .parameter "childHasTransientState"

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    .line 721
    .local v2, oldHasTransientState:Z
    if-eqz p2, :cond_1

    .line 722
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 727
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 728
    .local v1, newHasTransientState:Z
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 730
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_0
    :goto_1
    return-void

    .line 724
    .end local v1           #newHasTransientState:Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 731
    .restart local v1       #newHasTransientState:Z
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3452
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3453
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 764
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 767
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 5055
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5056
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5057
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5059
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    .line 778
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 784
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 781
    .local v0, focused:Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2769
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2770
    .local v2, count:I
    const/4 v4, 0x0

    .line 2772
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 2773
    new-array v4, v2, [I

    .line 2774
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2775
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2776
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2777
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 2778
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2774
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2783
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2785
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 2786
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2787
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2786
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2791
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .parameter "depth"

    .prologue
    .line 4824
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4827
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4828
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4829
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4830
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 4833
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4834
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4835
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4838
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4839
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4840
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4843
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 4844
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4845
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4846
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4105
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4106
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 4117
    :cond_0
    return-void

    .line 4110
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4111
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4113
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4114
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4115
    aput-object v4, v0, v2

    .line 4113
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4064
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4065
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 4043
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4044
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 4086
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4087
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2523
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x40

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2524
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2525
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2527
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2528
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2529
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2530
    aget-object v0, v1, v3

    .line 2531
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2529
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2534
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    .line 1084
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    .line 1085
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1086
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1087
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1088
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1089
    aget-object v0, v1, v3

    .line 1090
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1094
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1060
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1061
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1062
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1063
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1065
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1066
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1063
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2621
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2624
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2627
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2630
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2631
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_0

    .line 2632
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2633
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2636
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2637
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2638
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2639
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2641
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2642
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 986
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 987
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 988
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 989
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 990
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 989
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 1114
    const/4 v11, 0x0

    .line 1115
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1116
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1118
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1121
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1265
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1267
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1269
    :cond_1
    return v11

    .line 1124
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1127
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1129
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1135
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1136
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1137
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1138
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 1139
    aget-object v5, v6, v9

    .line 1140
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1141
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1142
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1143
    .local v8, handled:Z
    if-eqz v8, :cond_2

    .line 1144
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1138
    .end local v8           #handled:Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1131
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1150
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1151
    const/4 v11, 0x1

    goto :goto_0

    .line 1157
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1160
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1161
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1162
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1165
    .end local v5           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1167
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1172
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1173
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1179
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1187
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1188
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1190
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1192
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1194
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1195
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1196
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1197
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1199
    .end local v16           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1202
    if-eqz v13, :cond_8

    .line 1203
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1204
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1205
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1206
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1208
    :cond_8
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1212
    .end local v4           #action:I
    :cond_9
    if-eqz v13, :cond_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1216
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1218
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1219
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1236
    .end local v13           #target:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1238
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1239
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1240
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1242
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1248
    .end local v16           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1249
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1253
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1254
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1255
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 2843
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2844
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2845
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2847
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2848
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 2850
    .local v6, cache:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_2

    const/4 v5, 0x1

    .line 2851
    .local v5, buildCache:Z
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    .line 2852
    aget-object v7, v8, v18

    .line 2853
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 2854
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2855
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2856
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2857
    if-eqz v6, :cond_0

    .line 2858
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2859
    if-eqz v5, :cond_0

    .line 2860
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2851
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2848
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2850
    .restart local v6       #cache:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2866
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2867
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2868
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2871
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2873
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2874
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2876
    if-eqz v6, :cond_5

    .line 2877
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2880
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2885
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_6
    const/16 v21, 0x0

    .line 2886
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 2887
    .local v9, clipToPadding:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 2888
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2889
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2896
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2897
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2899
    const/16 v19, 0x0

    .line 2900
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2902
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 2903
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v11, :cond_10

    .line 2904
    aget-object v7, v8, v18

    .line 2906
    .restart local v7       #child:Landroid/view/View;
    if-nez v7, :cond_8

    .line 2907
    const-string v22, "ViewGroup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dispatchDraw: i = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", this = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debug()V

    .line 2911
    :cond_8
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 2912
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2903
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2886
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2916
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_c
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_10

    .line 2917
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2919
    .restart local v7       #child:Landroid/view/View;
    if-nez v7, :cond_d

    .line 2920
    const-string v22, "ViewGroup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dispatchDraw: i = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", this = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debug()V

    .line 2923
    :cond_d
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_f

    .line 2924
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2916
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 2930
    .end local v7           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 2931
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2932
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 2934
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_6
    if-ltz v18, :cond_11

    .line 2935
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2936
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2934
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 2940
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 2941
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 2944
    :cond_12
    if-eqz v9, :cond_13

    .line 2945
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2949
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2951
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 2952
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2955
    :cond_14
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_15

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_15

    if-nez v19, :cond_15

    .line 2960
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2961
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2966
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2968
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_15
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2510
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2511
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2512
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2513
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2514
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2516
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2683
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2684
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1775
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1777
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1782
    :goto_0
    return v0

    .line 1778
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1780
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1782
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 1744
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1745
    .local v3, childrenCount:I
    if-eqz v3, :cond_3

    .line 1746
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1747
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1748
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1750
    .local v7, y:F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 1751
    .local v4, customOrder:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_3

    .line 1752
    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 1753
    .local v1, childIndex:I
    :goto_1
    aget-object v0, v2, v1

    .line 1754
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v0, v8}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1751
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    :cond_1
    move v1, v5

    .line 1752
    goto :goto_1

    .line 1759
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childIndex:I
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1760
    const/4 v8, 0x1

    .line 1766
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    .end local v2           #children:[Landroid/view/View;
    .end local v4           #customOrder:Z
    .end local v5           #i:I
    .end local v6           #x:F
    .end local v7           #y:F
    :goto_2
    return v8

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_2
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 3021
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3022
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3023
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 3024
    aget-object v0, v1, v3

    .line 3025
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3027
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3029
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3030
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 3031
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3023
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3027
    goto :goto_1

    .line 3034
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1442
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1443
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1445
    move-object/from16 v8, p1

    .line 1446
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1450
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1451
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1452
    if-nez v13, :cond_3

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_3

    .line 1453
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1454
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1455
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1456
    .local v7, childrenCount:I
    if-eqz v7, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1458
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1459
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_3

    .line 1460
    aget-object v5, v6, v12

    .line 1461
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1459
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1468
    :cond_1
    move-object v11, v9

    .line 1470
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1471
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_1
    if-nez v11, :cond_4

    .line 1472
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1473
    const/16 v18, 0x0

    .line 1493
    .local v18, wasHovered:Z
    :goto_2
    if-eqz v14, :cond_7

    .line 1494
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1500
    :goto_3
    move-object v14, v11

    .line 1504
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_8

    .line 1505
    if-nez v18, :cond_2

    .line 1507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1526
    :cond_2
    :goto_4
    if-eqz v10, :cond_0

    .line 1534
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_3
    :goto_5
    if-eqz v9, :cond_c

    .line 1535
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1538
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1556
    :goto_6
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1557
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1558
    move-object/from16 v9, v16

    .line 1559
    goto :goto_5

    .line 1477
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_4
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_6

    .line 1478
    if-eqz v17, :cond_5

    .line 1479
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1483
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1484
    const/16 v18, 0x1

    .line 1485
    .restart local v18       #wasHovered:Z
    goto :goto_2

    .line 1481
    .end local v18           #wasHovered:Z
    :cond_5
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_7

    .line 1488
    :cond_6
    move-object/from16 v17, v11

    .line 1489
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1498
    .restart local v18       #wasHovered:Z
    :cond_7
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 1510
    :cond_8
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1511
    if-nez v18, :cond_9

    .line 1513
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1514
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1515
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1517
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1519
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1523
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1545
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_a
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_b

    .line 1546
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1549
    :cond_b
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1550
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1551
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1553
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_6

    .line 1562
    .end local v5           #child:Landroid/view/View;
    :cond_c
    if-nez v10, :cond_f

    const/4 v15, 0x1

    .line 1563
    .local v15, newHoveredSelf:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    .line 1564
    if-eqz v15, :cond_d

    .line 1566
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1608
    :cond_d
    :goto_9
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_e

    .line 1609
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1613
    :cond_e
    return v10

    .line 1562
    .end local v15           #newHoveredSelf:Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_8

    .line 1569
    .restart local v15       #newHoveredSelf:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1571
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_12

    .line 1573
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1585
    :goto_a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1588
    :cond_11
    if-eqz v15, :cond_d

    .line 1590
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    .line 1592
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1593
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_9

    .line 1577
    :cond_12
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1578
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1580
    :cond_13
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1581
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1582
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1583
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_a

    .line 1594
    :cond_14
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 1596
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1597
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1598
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1599
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1601
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1602
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1364
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1368
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1370
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1388
    :cond_1
    :goto_0
    return v0

    .line 1373
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 1376
    sget-boolean v1, Landroid/view/ViewGroup;->DBG_KEY:Z

    if-eqz v1, :cond_3

    .line 1377
    const-string v1, "ViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent to focus child event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFocused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_3
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1385
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_5

    .line 1386
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1388
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1349
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1356
    :goto_0
    return v0

    .line 1352
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1354
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1396
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1398
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1403
    :goto_0
    return v0

    .line 1399
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1401
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2549
    const/4 v3, 0x0

    .line 2550
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2551
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 2552
    if-eqz v3, :cond_0

    move v5, v3

    .line 2572
    :goto_0
    return v5

    .line 2557
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 2559
    .local v2, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2560
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2561
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2562
    .local v0, child:Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 2563
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2564
    if-eqz v3, :cond_1

    .line 2570
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    move v5, v3

    .line 2565
    goto :goto_0

    .line 2560
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2570
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5

    .restart local v1       #childCount:I
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2572
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2691
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2692
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2693
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2694
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2695
    aget-object v0, v1, v3

    .line 2696
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2697
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2694
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2700
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2663
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2664
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2665
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2666
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2667
    aget-object v0, v1, v3

    .line 2668
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2669
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2666
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2672
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .parameter "screenState"

    .prologue
    .line 2538
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2540
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2541
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2542
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2543
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2545
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .parameter "activated"

    .prologue
    .line 3107
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3108
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3109
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3110
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3112
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    .line 3116
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3117
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3118
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3119
    aget-object v0, v1, v3

    .line 3123
    .local v0, child:Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3124
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3118
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3127
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 3095
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3096
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3097
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3098
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3100
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2495
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2496
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2497
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2498
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2499
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2498
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2501
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1321
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1323
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1324
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1325
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1326
    aget-object v0, v1, v3

    .line 1327
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1329
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2711
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2712
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .parameter "ev"

    .prologue
    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1821
    :cond_0
    sget-boolean v28, Landroid/view/ViewGroup;->DBG_TOUCH:Z

    if-eqz v28, :cond_1

    .line 1822
    const-string v28, "ViewGroup"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(ViewGroup)dispatchTouchEvent 1: ev = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",mFirstTouchTarget = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",this = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_1
    const/16 v16, 0x0

    .line 1827
    .local v16, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1829
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 1832
    .local v6, actionMasked:I
    if-nez v6, :cond_2

    .line 1836
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1837
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1842
    :cond_2
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 1844
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x8

    and-int v28, v28, v29

    if-eqz v28, :cond_9

    const/4 v15, 0x1

    .line 1845
    .local v15, disallowIntercept:Z
    :goto_0
    if-nez v15, :cond_a

    .line 1846
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 1848
    .local v20, intercepted:Z
    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 1849
    sget-boolean v28, Landroid/view/ViewGroup;->DBG_TOUCH:Z

    if-eqz v28, :cond_4

    .line 1850
    const-string v28, "ViewGroup"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Touch event was intercepted event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ",this = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1864
    .end local v15           #disallowIntercept:Z
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_5

    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v6, v0, :cond_c

    :cond_5
    const/4 v9, 0x1

    .line 1868
    .local v9, canceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x20

    and-int v28, v28, v29

    if-eqz v28, :cond_d

    const/16 v24, 0x1

    .line 1876
    .local v24, split:Z
    :goto_3
    const/16 v21, 0x0

    .line 1877
    .local v21, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 1878
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_14

    if-nez v20, :cond_14

    .line 1879
    if-eqz v6, :cond_7

    if-eqz v24, :cond_6

    const/16 v28, 0x5

    move/from16 v0, v28

    if-eq v6, v0, :cond_7

    :cond_6
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_14

    .line 1882
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1883
    .local v5, actionIndex:I
    if-eqz v24, :cond_e

    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v18, v28, v29

    .line 1888
    .local v18, idBitsToAssign:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1890
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1891
    .local v13, childrenCount:I
    if-eqz v13, :cond_11

    .line 1894
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1895
    .local v12, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 1896
    .local v26, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 1898
    .local v27, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    .line 1899
    .local v14, customOrder:Z
    add-int/lit8 v17, v13, -0x1

    .local v17, i:I
    :goto_5
    if-ltz v17, :cond_11

    .line 1900
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v11

    .line 1902
    .local v11, childIndex:I
    :goto_6
    aget-object v10, v12, v11

    .line 1903
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 1899
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 1844
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v13           #childrenCount:I
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v18           #idBitsToAssign:I
    .end local v20           #intercepted:Z
    .end local v21           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #split:Z
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1855
    .restart local v15       #disallowIntercept:Z
    :cond_a
    const/16 v20, 0x0

    .restart local v20       #intercepted:Z
    goto/16 :goto_1

    .line 1860
    .end local v15           #disallowIntercept:Z
    .end local v20           #intercepted:Z
    :cond_b
    const/16 v20, 0x1

    .restart local v20       #intercepted:Z
    goto/16 :goto_1

    .line 1864
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1868
    .restart local v9       #canceled:Z
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1883
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v21       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v24       #split:Z
    :cond_e
    const/16 v18, -0x1

    goto :goto_4

    .restart local v12       #children:[Landroid/view/View;
    .restart local v13       #childrenCount:I
    .restart local v14       #customOrder:Z
    .restart local v17       #i:I
    .restart local v18       #idBitsToAssign:I
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_f
    move/from16 v11, v17

    .line 1900
    goto :goto_6

    .line 1913
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v21

    .line 1921
    if-eqz v21, :cond_12

    .line 1924
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1942
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_11
    :goto_7
    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    .line 1946
    :goto_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 1947
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    goto :goto_8

    .line 1928
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    .restart local v12       #children:[Landroid/view/View;
    .restart local v14       #customOrder:Z
    .restart local v17       #i:I
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_12
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1929
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1931
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1932
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1933
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1935
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v21

    .line 1936
    const/4 v7, 0x1

    .line 1937
    goto :goto_7

    .line 1949
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #children:[Landroid/view/View;
    .end local v14           #customOrder:Z
    .end local v17           #i:I
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_13
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    or-int v28, v28, v18

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1955
    .end local v5           #actionIndex:I
    .end local v13           #childrenCount:I
    .end local v18           #idBitsToAssign:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v28, v0

    if-nez v28, :cond_19

    .line 1957
    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v16

    .line 1998
    :cond_15
    if-nez v9, :cond_16

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_16

    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v6, v0, :cond_20

    .line 2001
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2014
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v20           #intercepted:Z
    .end local v21           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #split:Z
    :cond_17
    :goto_9
    if-nez v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2017
    :cond_18
    return v16

    .line 1962
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v20       #intercepted:Z
    .restart local v21       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v24       #split:Z
    :cond_19
    const/16 v23, 0x0

    .line 1963
    .local v23, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v25, v0

    .line 1964
    .local v25, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_a
    if-eqz v25, :cond_15

    .line 1965
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v22, v0

    .line 1966
    .local v22, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_1b

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 1967
    const/16 v16, 0x1

    .line 1992
    :cond_1a
    move-object/from16 v23, v25

    .line 1993
    move-object/from16 v25, v22

    .line 1994
    goto :goto_a

    .line 1969
    :cond_1b
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_1c

    if-eqz v20, :cond_1e

    :cond_1c
    const/4 v8, 0x1

    .line 1971
    .local v8, cancelChild:Z
    :goto_b
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1973
    const/16 v16, 0x1

    .line 1981
    :cond_1d
    if-eqz v8, :cond_1a

    .line 1982
    if-nez v23, :cond_1f

    .line 1983
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1987
    :goto_c
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1988
    move-object/from16 v25, v22

    .line 1989
    goto :goto_a

    .line 1969
    .end local v8           #cancelChild:Z
    :cond_1e
    const/4 v8, 0x0

    goto :goto_b

    .line 1985
    .restart local v8       #cancelChild:Z
    :cond_1f
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_c

    .line 2002
    .end local v8           #cancelChild:Z
    .end local v22           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v25           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_20
    if-eqz v24, :cond_17

    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v6, v0, :cond_17

    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2004
    .restart local v5       #actionIndex:I
    const/16 v28, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    shl-int v19, v28, v29

    .line 2005
    .local v19, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_9
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1411
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1415
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1417
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1430
    :cond_1
    :goto_0
    return v0

    .line 1420
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1422
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1427
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1428
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1430
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 751
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 1034
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1035
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1036
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1037
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1038
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1037
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 942
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 943
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 944
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 945
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 946
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1309
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1311
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1312
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1313
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1314
    aget-object v0, v1, v3

    .line 1315
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1317
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 1047
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1048
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1049
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1050
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1051
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3049
    if-eqz p2, :cond_0

    .line 3050
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    .line 3052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 5266
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5268
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 5269
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 5270
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5274
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5275
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5277
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5278
    aget-object v0, v1, v3

    .line 5279
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 5280
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5277
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5284
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 5153
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 5154
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5155
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5156
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5158
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5160
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5172
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 5162
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 5163
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5165
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 5166
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    .end local p0
    :goto_0
    return-object p0

    .line 838
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 841
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1275
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1276
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1277
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1278
    aget-object v0, v1, v3

    .line 1279
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1277
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1287
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .parameter "accessibilityId"

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 922
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 934
    :goto_0
    return-object v5

    .line 925
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 926
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 927
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 928
    aget-object v0, v1, v4

    .line 929
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 930
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 931
    goto :goto_0

    .line 927
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 934
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3222
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3241
    .end local p0
    :goto_0
    return-object p0

    .line 3226
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3227
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3229
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3230
    aget-object v2, v3, v0

    .line 3232
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3233
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3235
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3236
    goto :goto_0

    .line 3229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3241
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 3168
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_0

    .line 3187
    .end local p0
    :goto_0
    return-object p0

    .line 3172
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3173
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3175
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3176
    aget-object v2, v3, v0

    .line 3178
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3179
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3181
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3182
    goto :goto_0

    .line 3175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3187
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 3195
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3214
    .end local p0
    :goto_0
    return-object p0

    .line 3199
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3200
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3202
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3203
    aget-object v2, v3, v0

    .line 3205
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3206
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3208
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3209
    goto :goto_0

    .line 3202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3214
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter "text"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 908
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 909
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 910
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 911
    aget-object v0, v1, v3

    .line 912
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 914
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 910
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 5084
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5085
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 5086
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5087
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5089
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5090
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5093
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5094
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5098
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5099
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5102
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 5103
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 5106
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5108
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5110
    :cond_3
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 5240
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5241
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 5242
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5243
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5244
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 5245
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5246
    if-eqz v2, :cond_1

    .line 5251
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 5244
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 655
    :goto_0
    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 608
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 622
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5205
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 5206
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 5222
    :goto_1
    return v7

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v6

    .line 5205
    goto :goto_0

    .line 5210
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 5211
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5212
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5213
    .local v2, count:I
    const/4 v5, 0x1

    .line 5214
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 5215
    aget-object v0, v1, v3

    .line 5216
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5217
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5218
    const/4 v5, 0x0

    .line 5214
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5222
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 4816
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4787
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 4805
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 4886
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 4887
    :cond_0
    const/4 v0, 0x0

    .line 4889
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 4875
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2985
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3160
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 11
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4462
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4463
    .local v3, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4465
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4466
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4469
    :cond_0
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v6, v7

    .line 4470
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v6, v7

    .line 4472
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4474
    if-eqz p3, :cond_2

    .line 4475
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4476
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4478
    .local v2, position:[F
    :goto_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4479
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4480
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4481
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4482
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4484
    .end local v2           #position:[F
    :cond_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4485
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4488
    :cond_2
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4489
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_5

    .line 4495
    :goto_2
    return v4

    .line 4462
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 4476
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_4
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_1

    .line 4490
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4492
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v5

    .line 4495
    goto :goto_2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 540
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 4572
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 5261
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1

    .prologue
    .line 4756
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 3800
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4727
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 574
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 849
    iget v7, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v5

    .line 853
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 854
    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 858
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_0

    .line 859
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 860
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 862
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 863
    aget-object v0, v1, v4

    .line 864
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 865
    goto :goto_0

    .line 862
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

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

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 4858
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4859
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4860
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4861
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 4865
    .end local v2           #i:I
    :goto_1
    return v2

    .line 4860
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4865
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 2651
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2652
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2656
    :goto_0
    return-void

    .line 2654
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 23
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4124
    move-object/from16 v13, p0

    .line 4126
    .local v13, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4127
    .local v5, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_9

    .line 4131
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 4137
    .local v8, drawAnimation:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 4138
    .local v7, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v18

    if-nez v18, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v9, 0x1

    .line 4142
    .local v9, isOpaque:Z
    :goto_1
    if-eqz v9, :cond_c

    const/high16 v12, 0x40

    .line 4144
    .local v12, opaqueFlag:I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 4145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, -0x8000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4146
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x8001

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4147
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4150
    :cond_0
    iget-object v10, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4151
    .local v10, location:[I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 4152
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    aput v19, v10, v18

    .line 4153
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 4155
    :cond_1
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4156
    .local v6, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 4159
    iget-object v14, v5, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 4160
    .local v14, t:Landroid/view/animation/Transformation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v16

    .line 4161
    .local v16, transformed:Z
    if-eqz v16, :cond_d

    .line 4162
    iget-object v15, v5, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 4163
    .local v15, transformMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4164
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_2

    .line 4165
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4173
    .end local v14           #t:Landroid/view/animation/Transformation;
    .end local v16           #transformed:Z
    :cond_2
    :goto_3
    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4174
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4181
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    :cond_3
    const/16 v17, 0x0

    .line 4182
    .local v17, view:Landroid/view/View;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v13

    .line 4183
    check-cast v17, Landroid/view/View;

    .line 4186
    :cond_4
    if-eqz v8, :cond_5

    .line 4187
    if-eqz v17, :cond_f

    .line 4188
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4196
    :cond_5
    :goto_4
    if-eqz v17, :cond_7

    .line 4197
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3000

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getSolidColor()I

    move-result v18

    if-nez v18, :cond_6

    .line 4199
    const/high16 v12, 0x20

    .line 4201
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x60

    and-int v18, v18, v19

    const/high16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 4202
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, -0x600001

    and-int v18, v18, v19

    or-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 4206
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v13, v10, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v13

    .line 4207
    if-eqz v17, :cond_8

    .line 4209
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 4210
    .local v11, m:Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v18

    if-nez v18, :cond_8

    .line 4211
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4212
    .restart local v6       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4213
    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4214
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4220
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v11           #m:Landroid/graphics/Matrix;
    :cond_8
    if-nez v13, :cond_3

    .line 4222
    .end local v7           #childMatrix:Landroid/graphics/Matrix;
    .end local v8           #drawAnimation:Z
    .end local v9           #isOpaque:Z
    .end local v10           #location:[I
    .end local v12           #opaqueFlag:I
    .end local v17           #view:Landroid/view/View;
    :cond_9
    return-void

    .line 4131
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4138
    .restart local v7       #childMatrix:Landroid/graphics/Matrix;
    .restart local v8       #drawAnimation:Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 4142
    .restart local v9       #isOpaque:Z
    :cond_c
    const/high16 v12, 0x20

    goto/16 :goto_2

    .line 4168
    .restart local v6       #boundingRect:Landroid/graphics/RectF;
    .restart local v10       #location:[I
    .restart local v12       #opaqueFlag:I
    .restart local v14       #t:Landroid/view/animation/Transformation;
    .restart local v16       #transformed:Z
    :cond_d
    move-object v15, v7

    .restart local v15       #transformMatrix:Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 4171
    .end local v14           #t:Landroid/view/animation/Transformation;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    .end local v16           #transformed:Z
    :cond_e
    move-object v15, v7

    .restart local v15       #transformMatrix:Landroid/graphics/Matrix;
    goto/16 :goto_3

    .line 4189
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v15           #transformMatrix:Landroid/graphics/Matrix;
    .restart local v17       #view:Landroid/view/View;
    :cond_f
    instance-of v0, v13, Landroid/view/ViewRootImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v13

    .line 4190
    check-cast v18, Landroid/view/ViewRootImpl;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_4
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4292
    move-object v3, p0

    .line 4294
    .local v3, parent:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4295
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    .line 4296
    iget v6, p1, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_0

    .line 4297
    iget-object v6, p1, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4300
    :cond_0
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 4301
    .local v1, left:I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 4302
    .local v5, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4303
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 4307
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 4308
    check-cast v4, Landroid/view/ViewGroup;

    .line 4309
    .local v4, parentVG:Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_3

    .line 4311
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 4312
    const/4 v3, 0x0

    .line 4326
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    .line 4328
    .end local v1           #left:I
    .end local v5           #top:I
    :cond_2
    return-void

    .line 4314
    .restart local v1       #left:I
    .restart local v4       #parentVG:Landroid/view/ViewGroup;
    .restart local v5       #top:I
    :cond_3
    invoke-direct {v4, v1, v5, p2}, Landroid/view/ViewGroup;->invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 4315
    iget v1, v4, Landroid/view/View;->mLeft:I

    .line 4316
    iget v5, v4, Landroid/view/View;->mTop:I

    goto :goto_0

    .line 4321
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4322
    .local v2, location:[I
    const/4 v6, 0x0

    aput v1, v2, v6

    .line 4323
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 4324
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4233
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 4235
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 4237
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4240
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 4241
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4243
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    .line 4244
    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4245
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 4248
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4250
    aput v0, p1, v5

    .line 4251
    aput v1, p1, v6

    .line 4253
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_2

    .line 4254
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4255
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4258
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4281
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 4261
    :cond_3
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4263
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 4264
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 4265
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    .line 4266
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4272
    :goto_1
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_4

    .line 4273
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4274
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4277
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 4269
    :cond_5
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 4281
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4618
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4588
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4685
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4653
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2343
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2185
    iget v4, p0, Landroid/view/View;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 2186
    .local v1, localX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 2187
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 2188
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 2189
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 2190
    aput v3, v2, v7

    .line 2191
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2192
    aget v1, v2, v6

    .line 2193
    aget v3, v2, v7

    .line 2195
    .end local v2           #localXY:[F
    :cond_0
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2196
    .local v0, isInView:Z
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 2197
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2208
    :cond_1
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5118
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 5288
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5289
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5290
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5291
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5292
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5294
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4503
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4504
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 4505
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 4507
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4512
    :goto_0
    return-void

    .line 4510
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .prologue
    .line 973
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 974
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 975
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 976
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 977
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4925
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4927
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4930
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4931
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4952
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4955
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4959
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4960
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4902
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4903
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4904
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4905
    aget-object v0, v1, v2

    .line 4906
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 4907
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4910
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 1295
    const/4 v0, 0x0

    .line 1296
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1298
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1299
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1301
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1304
    :cond_0
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 4441
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4442
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4444
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4445
    aget-object v3, v0, v2

    .line 4446
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4447
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4448
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_0

    .line 4449
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->offsetTopBottom(I)V

    .line 4450
    invoke-virtual {p0, v5, v5}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 4444
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4453
    .end local v3           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4363
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4364
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4384
    if-ne p1, p0, :cond_0

    .line 4431
    :goto_0
    return-void

    .line 4388
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4393
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    .line 4395
    if-eqz p3, :cond_2

    .line 4396
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4398
    if-eqz p4, :cond_1

    move-object v0, v1

    .line 4399
    check-cast v0, Landroid/view/View;

    .line 4400
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v1

    .line 4411
    check-cast p1, Landroid/view/View;

    .line 4412
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 4403
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, v1

    .line 4404
    check-cast v0, Landroid/view/View;

    .line 4405
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4407
    .end local v0           #p:Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 4417
    :cond_4
    if-ne v1, p0, :cond_6

    .line 4418
    if-eqz p3, :cond_5

    .line 4419
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4422
    :cond_5
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4427
    :cond_6
    const-string v2, "ViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter must be a descendant of this view, this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " descendant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " theParent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->debug()V

    .line 4429
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4373
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4374
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2755
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2758
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2759
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2761
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2762
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2765
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2731
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2734
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    .line 2735
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2736
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2737
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 2739
    .local v0, buildCache:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2740
    aget-object v1, v2, v4

    .line 2741
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 2742
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2743
    if-eqz v0, :cond_0

    .line 2744
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2739
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2737
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2749
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2751
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "oldVisibility"
    .parameter "newVisibility"

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 1005
    if-nez p3, :cond_2

    .line 1006
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1022
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    .line 1023
    if-nez p3, :cond_1

    .line 1024
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 1027
    :cond_1
    return-void

    .line 1008
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1009
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1015
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 5298
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 5299
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5322
    :cond_0
    return-object v4

    .line 5302
    :cond_1
    const/4 v3, 0x0

    .line 5303
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5304
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 5305
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5307
    .local v0, childState:[I
    if-eqz v0, :cond_2

    .line 5308
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5304
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5312
    .end local v0           #childState:[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5314
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 5315
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5317
    .restart local v0       #childState:[I
    if-eqz v0, :cond_4

    .line 5318
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5314
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 2816
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2817
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 2818
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2819
    .local v6, c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 2820
    .local v8, insets:Landroid/graphics/Insets;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v8, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v8, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, v8, Landroid/graphics/Insets;->right:I

    sub-int v3, v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, v8, Landroid/graphics/Insets;->bottom:I

    sub-int v4, v0, v4

    const/high16 v5, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 2817
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2829
    .end local v6           #c:Landroid/view/View;
    .end local v7           #i:I
    .end local v8           #insets:Landroid/graphics/Insets;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;)V

    .line 2832
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 2833
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2834
    .restart local v6       #c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    const v5, -0xffff01

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 2832
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2836
    .end local v6           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 2805
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2806
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2807
    .local v0, c:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 2805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2809
    .end local v0           #c:Landroid/view/View;
    :cond_0
    return-void
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2593
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2594
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2595
    return-void
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2577
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2578
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    .line 2579
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 2580
    .local v1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2581
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 2582
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2583
    .local v2, childrenForAccessibilityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2584
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2585
    .local v0, child:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2583
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2587
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2589
    .end local v1           #childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2           #childrenForAccessibilityCount:I
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1728
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2406
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2466
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2467
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2468
    const/4 v6, 0x0

    .line 2469
    .local v6, index:I
    const/4 v5, 0x1

    .line 2470
    .local v5, increment:I
    move v3, v2

    .line 2476
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2477
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2478
    aget-object v0, v1, v4

    .line 2479
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2480
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2481
    const/4 v7, 0x1

    .line 2485
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 2472
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2473
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2474
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 2477
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2485
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 701
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    .line 5598
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3396
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3397
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3399
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3405
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3408
    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1076
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1078
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1080
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 3861
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3862
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3863
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3864
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 3880
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3881
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 3932
    :cond_0
    :goto_0
    return-void

    .line 3885
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3886
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3888
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3889
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    .line 3890
    .local v3, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 3892
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3894
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_2
    if-ltz v5, :cond_9

    .line 3895
    aget-object v6, v0, v5

    .line 3897
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 3898
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3901
    :cond_2
    if-ne v6, v4, :cond_3

    .line 3902
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 3903
    move-object v1, v6

    .line 3906
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3908
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3909
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3911
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3913
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3918
    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3919
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3922
    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3924
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3925
    aput-object v9, v0, v5

    .line 3894
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_7
    move v3, v7

    .line 3889
    goto :goto_1

    .line 3914
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_8
    if-eqz v3, :cond_5

    .line 3915
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 3928
    .end local v6           #view:Landroid/view/View;
    :cond_9
    if-eqz v1, :cond_0

    .line 3929
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 3955
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3956
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3959
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 3960
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 3963
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3965
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3966
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3968
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3970
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3975
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3979
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3980
    return-void

    .line 3971
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 3972
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3654
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3655
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3657
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3698
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3699
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3701
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3670
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3671
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3714
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3715
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3717
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3685
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3686
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 592
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 593
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 597
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 599
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2351
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2366
    :cond_0
    :goto_1
    return-void

    .line 2351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2356
    :cond_2
    if-eqz p1, :cond_3

    .line 2357
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2363
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2359
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2431
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 2443
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2433
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2440
    :cond_0
    :goto_0
    return v1

    .line 2435
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2436
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2439
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2440
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2431
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 671
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v2

    .line 674
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 675
    .local v1, propagate:Z
    if-eqz v1, :cond_0

    .line 678
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 5385
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5386
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5387
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5389
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5229
    if-eqz p1, :cond_0

    .line 5230
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5231
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5232
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 5235
    :cond_0
    return-void
.end method

.method public resetAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 2602
    invoke-super {p0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2603
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2604
    .local v2, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2605
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2606
    aget-object v0, v2, v3

    .line 2607
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2605
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2609
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    .prologue
    .line 5572
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 5574
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5575
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5576
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5577
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5578
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 5575
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5581
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .prologue
    .line 5508
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5510
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5511
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5512
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5513
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5514
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5511
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5517
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .prologue
    .line 5556
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 5558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5559
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5560
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5561
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5562
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    .line 5559
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5565
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .prologue
    .line 5540
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 5542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5543
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5544
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5545
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5546
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 5543
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5549
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 5524
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5526
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5527
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5528
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5529
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5530
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5527
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5533
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    .prologue
    .line 5480
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 5481
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5482
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5483
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5484
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5485
    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    .line 5482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5488
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    .line 5411
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    .line 5412
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5413
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5414
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5415
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5416
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5417
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 5414
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5421
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    .prologue
    .line 5495
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 5496
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5497
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5498
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5499
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    .line 5497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5501
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .prologue
    .line 5465
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 5466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5467
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5468
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5469
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5470
    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    .line 5467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5473
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()V
    .locals 4

    .prologue
    .line 5396
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()V

    .line 5397
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5398
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5399
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5400
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5401
    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()V

    .line 5398
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5404
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .prologue
    .line 5447
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    .line 5448
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5449
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5450
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5451
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5452
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5453
    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 5450
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5457
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    .prologue
    .line 5429
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    .line 5430
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 5431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5432
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5433
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5434
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5435
    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    .line 5432
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5439
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return v3
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 4549
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4550
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 5332
    if-eqz p1, :cond_0

    .line 5333
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5338
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5339
    return-void

    .line 5335
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 4639
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4640
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4603
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4604
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2720
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2721
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2722
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2723
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2724
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2723
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2727
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4699
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4700
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4670
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4671
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .parameter "clipChildren"

    .prologue
    const/4 v3, 0x1

    .line 3066
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 3067
    .local v2, previousValue:Z
    :goto_0
    if-eq p1, v2, :cond_2

    .line 3068
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3069
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v3, :cond_2

    .line 3070
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3071
    .local v0, child:Landroid/view/View;
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    .line 3072
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v3, p1}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 3069
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3066
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #previousValue:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3076
    .restart local v2       #previousValue:Z
    :cond_2
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 3087
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3088
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 552
    sparse-switch p1, :sswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 562
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 563
    return-void

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 4559
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4560
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4561
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4563
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 5372
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5373
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .parameter "layoutMode"

    .prologue
    .line 4772
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 4773
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4776
    :cond_0
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 3781
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3782
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3784
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3785
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3786
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3788
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 2331
    if-eqz p1, :cond_0

    .line 2332
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2336
    :goto_0
    return-void

    .line 2334
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3389
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3390
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4742
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4743
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3144
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3145
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 5593
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 628
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 635
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 4536
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4537
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4538
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4540
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5134
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 5135
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5138
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5140
    :cond_1
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 795
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 800
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1333
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1335
    .local v0, changed:Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1336
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1337
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1338
    aget-object v1, v2, v4

    .line 1339
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1337
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1341
    .end local v1           #child:Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3343
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3346
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 3347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3349
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3350
    return-void
.end method
