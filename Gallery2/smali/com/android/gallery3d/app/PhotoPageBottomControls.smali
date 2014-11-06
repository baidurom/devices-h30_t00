.class public Lcom/android/gallery3d/app/PhotoPageBottomControls;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
    }
.end annotation


# static fields
.field private static final CONTAINER_ANIM_DURATION_MS:I = 0xc8

.field private static final CONTROL_ANIM_DURATION_MS:I = 0x96


# instance fields
.field private mBottomMargin:I

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerAnimIn:Landroid/view/animation/Animation;

.field private mContainerAnimOut:Landroid/view/animation/Animation;

.field private mContainerVisible:Z

.field private mControlsVisible:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

.field private mIconHeight:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mStartFadeIn:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 9
    .parameter "delegate"
    .parameter "context"
    .parameter "layout"

    .prologue
    const-wide/16 v7, 0xc8

    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    .line 51
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    .line 52
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    .line 170
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;-><init>(Lcom/android/gallery3d/app/PhotoPageBottomControls;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mStartFadeIn:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    .line 65
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mIconHeight:I

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mBottomMargin:I

    .line 69
    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 71
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04005b

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    .line 73
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->onConfigChanged(II)V

    .line 77
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 78
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 83
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v3}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->refreshBottomControlsWhenReady()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/PhotoPageBottomControls;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPageBottomControls;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static getControlAnimForVisibility(Z)Landroid/view/animation/Animation;
    .locals 3
    .parameter "visible"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 57
    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 60
    return-object v0

    .line 57
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    return-void
.end method

.method private show()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 140
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->onBottomControlClicked(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onConfigChanged(II)V
    .locals 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 153
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v3, p1, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int v3, p2, v3

    div-int/lit8 v1, v3, 0x2

    .line 155
    .local v1, bottomSpace:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mIconHeight:I

    if-le v1, v3, :cond_1

    .line 156
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mIconHeight:I

    sub-int v3, v1, v3

    div-int/lit8 v0, v3, 0x2

    .line 157
    .local v0, bottomMargin:I
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 158
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v0           #bottomMargin:I
    :goto_0
    return-void

    .line 162
    .restart local v0       #bottomMargin:I
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mStartFadeIn:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 165
    .end local v0           #bottomMargin:I
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mBottomMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 166
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 181
    sub-int v1, p5, p9

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 182
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 183
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->onConfigChanged(II)V

    .line 185
    :cond_0
    return-void

    .line 181
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 104
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControls()Z

    move-result v5

    .line 105
    .local v5, visible:Z
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eq v5, v6, :cond_1

    const/4 v0, 0x1

    .line 106
    .local v0, containerVisibilityChanged:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    if-eqz v5, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->show()V

    .line 112
    :goto_1
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 114
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-nez v6, :cond_3

    .line 131
    :goto_2
    return-void

    .end local v0           #containerVisibilityChanged:Z
    :cond_1
    move v0, v7

    .line 105
    goto :goto_0

    .line 110
    .restart local v0       #containerVisibilityChanged:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->hide()V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    .local v1, control:Landroid/view/View;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 119
    .local v4, prevVisibility:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControl(I)Z

    move-result v2

    .line 120
    .local v2, curVisibility:Z
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 121
    if-nez v0, :cond_5

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 123
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->getControlAnimForVisibility(Z)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    :cond_5
    if-eqz v2, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 125
    :cond_6
    const/4 v6, 0x4

    goto :goto_4

    .line 130
    .end local v1           #control:Landroid/view/View;
    .end local v2           #curVisibility:Z
    .end local v4           #prevVisibility:Ljava/lang/Boolean;
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2
.end method
