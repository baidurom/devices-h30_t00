.class public abstract Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;
.super Ljava/lang/Object;
.source "AbstractDynamicUI.java"

# interfaces
.implements Lcom/android/hwcamera/settings/dynaui/DynamicUI;


# instance fields
.field private mBlackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

.field private mIsEnable:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mIsEnable:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mBlackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private fillChildViewAlpha(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 46
    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .local v1, vg:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addImageLine(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 62
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/ImageLine;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/hwcamera/settings/dynaui/ImageLine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/dynaui/ImageLine;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public enable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mIsEnable:Z

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    if-eqz p1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mBlackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mBlackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->fillChildViewAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mBlackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x3ecccccd

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->fillChildViewAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDescription"

    .prologue
    .line 76
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "mVisible"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;->mImageLine:Lcom/android/hwcamera/settings/dynaui/ImageLine;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/settings/dynaui/ImageLine;->setVisibility(I)V

    .line 71
    :cond_1
    return-void
.end method
