.class public Lcom/android/hwcamera/settings/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelativeX(Landroid/view/ViewGroup;)I
    .locals 3
    .parameter "parentView"

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, x:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v1, padding:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 77
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 79
    .end local v1           #padding:Landroid/graphics/Rect;
    :cond_0
    return v2
.end method

.method private static listVisbleViews(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .parameter "parentView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 95
    :cond_1
    return-object v3

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 86
    .local v1, size:I
    const/4 v2, 0x0

    .line 87
    .local v2, v:Landroid/view/View;
    const/4 v3, 0x0

    .line 88
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 91
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .restart local v3       #views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static translate(Landroid/view/ViewGroup;ZZ)V
    .locals 10
    .parameter "parentView"
    .parameter "revert"
    .parameter "isDelay"

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 22
    invoke-static {p0}, Lcom/android/hwcamera/settings/AnimationUtil;->listVisbleViews(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v7

    .line 23
    .local v7, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 25
    .local v2, oldFrame:Landroid/view/View;
    if-eqz p1, :cond_3

    move v0, v8

    :goto_2
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 26
    .local v4, newframe:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 28
    .local v5, width:I
    invoke-static {p0}, Lcom/android/hwcamera/settings/AnimationUtil;->getRelativeX(Landroid/view/ViewGroup;)I

    move-result v0

    int-to-float v3, v0

    .line 30
    .local v3, x:F
    new-array v0, v9, [F

    const/4 v9, 0x0

    aput v9, v0, v8

    int-to-float v8, v5

    aput v8, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 31
    .local v6, valueAnimator:Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_4

    const-wide/16 v0, 0x190

    :goto_3
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance v0, Lcom/android/hwcamera/settings/AnimationUtil$1;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/settings/AnimationUtil$1;-><init>(ZLandroid/view/View;FLandroid/view/View;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    new-instance v0, Lcom/android/hwcamera/settings/AnimationUtil$2;

    invoke-direct {v0, p0, v4, v2}, Lcom/android/hwcamera/settings/AnimationUtil$2;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .end local v2           #oldFrame:Landroid/view/View;
    .end local v3           #x:F
    .end local v4           #newframe:Landroid/view/View;
    .end local v5           #width:I
    .end local v6           #valueAnimator:Landroid/animation/ValueAnimator;
    :cond_2
    move v0, v8

    .line 24
    goto :goto_1

    .restart local v2       #oldFrame:Landroid/view/View;
    :cond_3
    move v0, v1

    .line 25
    goto :goto_2

    .line 31
    .restart local v3       #x:F
    .restart local v4       #newframe:Landroid/view/View;
    .restart local v5       #width:I
    .restart local v6       #valueAnimator:Landroid/animation/ValueAnimator;
    :cond_4
    const-wide/16 v0, 0x12c

    goto :goto_3
.end method
