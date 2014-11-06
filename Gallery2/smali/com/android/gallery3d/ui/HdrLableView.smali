.class public Lcom/android/gallery3d/ui/HdrLableView;
.super Lcom/android/gallery3d/ui/GLView;
.source "HdrLableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;
    }
.end annotation


# static fields
.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final LABEL_HEIGHT:I = 0x2c

.field private static final LABEL_LEFT_MAGIN:I = 0x24

.field private static final LABEL_TOP_MAGIN:I = 0x46

.field private static final LABEL_WIDTH:I = 0x8c


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

.field private mHdrVisible:Z

.field private mLabelHeight:I

.field private mLabelLeftMargin:I

.field private mLabelTopMargin:I

.field private mLabelWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2
    .parameter "activity"
    .parameter "iconId"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 28
    new-instance v0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    iget-object v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/ui/HdrLableView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v0, pixelDensity:F
    float-to-int v1, v0

    mul-int/lit8 v1, v1, 0x46

    iput v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelTopMargin:I

    .line 90
    float-to-int v1, v0

    mul-int/lit8 v1, v1, 0x24

    iput v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelLeftMargin:I

    .line 91
    float-to-int v1, v0

    mul-int/lit8 v1, v1, 0x2c

    iput v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelHeight:I

    .line 92
    float-to-int v1, v0

    mul-int/lit16 v1, v1, 0x8c

    iput v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelWidth:I

    .line 93
    return-void
.end method

.method private setHdrLableVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    if-ne v0, p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    .line 63
    if-nez p1, :cond_1

    .line 64
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 70
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/HdrLableView;->invalidate()V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/HdrLableView;->setHdrLableVisible(Z)V

    .line 79
    return-void
.end method

.method public layout(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 97
    sub-int v1, p3, p1

    sub-int v2, p4, p2

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelLeftMargin:I

    .line 98
    .local v0, leftMargin:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelTopMargin:I

    iget v2, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelTopMargin:I

    iget v4, p0, Lcom/android/gallery3d/ui/HdrLableView;->mLabelHeight:I

    add-int/2addr v3, v4

    invoke-super {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 99
    return-void

    .line 97
    .end local v0           #leftMargin:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    #calls: Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->recycle()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->access$000(Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 35
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    if-nez v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    .local v2, needRestore:Z
    if-eqz v0, :cond_2

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 43
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v1

    .line 44
    .local v1, more:Z
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 45
    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/HdrLableView;->invalidate()V

    .line 51
    .end local v1           #more:Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    iget-object v4, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->getHeight()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 52
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 53
    if-eqz v2, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0

    .line 48
    .restart local v1       #more:Z
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/HdrLableView;->setHdrLableVisible(Z)V

    .line 75
    return-void
.end method
