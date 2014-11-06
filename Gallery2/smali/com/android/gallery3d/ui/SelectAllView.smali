.class public Lcom/android/gallery3d/ui/SelectAllView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SelectAllView.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SelectAllView"


# instance fields
.field private final backgroundColorResID:I

.field private final bottomLineColor:I

.field private final bottomLineHeight:I

.field private isPressed:Z

.field private isSelectAll:Z

.field private mChechedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mCheckButtonSize:I

.field private mCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mContext:Landroid/content/Context;

.field private final mLayoutRTL:Z

.field private final mMarginLeft:I

.field private final mMarginRight:I

.field private final mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mSelectAllText:Lcom/android/gallery3d/ui/StringTexture;

.field private mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private final mTextHeight:I

.field private final mTextSize:I

.field private mUnCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mUnCheckedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final paintViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 6
    .parameter "context"
    .parameter "selectionManager"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 17
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    .line 50
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectAllView;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, r:Landroid/content/res/Resources;
    iput p3, p0, Lcom/android/gallery3d/ui/SelectAllView;->paintViewHeight:I

    .line 61
    const/16 v2, 0x80

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mLayoutRTL:Z

    .line 65
    const v2, 0x7f0b00af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginLeft:I

    .line 66
    const v2, 0x7f0b00b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginRight:I

    .line 68
    const v2, 0x7f0b00ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mTextSize:I

    .line 69
    const v2, 0x7f0a0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 70
    .local v1, textColor:I
    const v2, 0x7f0d0484

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/gallery3d/ui/SelectAllView;->mTextSize:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectAllText:Lcom/android/gallery3d/ui/StringTexture;

    .line 71
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectAllText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getTextHeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mTextHeight:I

    .line 73
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->backgroundColorResID:I

    .line 76
    new-instance v2, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;

    const v3, 0x7f020258

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 78
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020052

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 79
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f02004e

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mUnCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 81
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020053

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mChechedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 82
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f020051

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mUnCheckedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 85
    const v2, 0x7f0b00b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckButtonSize:I

    .line 87
    const v2, 0x7f0a003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->bottomLineColor:I

    .line 88
    const v2, 0x7f0b00ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->bottomLineHeight:I

    .line 89
    return-void

    .end local v1           #textColor:I
    :cond_0
    move v2, v3

    .line 61
    goto/16 :goto_0
.end method

.method private isOutsideView(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 190
    .local v1, y:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->getHeight()I

    move-result v0

    .line 191
    .local v0, h:I
    if-ltz v1, :cond_0

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    .line 213
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/ui/SelectAllView;->setMeasuredSize(II)V

    .line 94
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 149
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SelectAllView;->isOutsideView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v0, v1

    .line 185
    goto :goto_0

    .line 151
    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    .line 153
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    if-nez v2, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 155
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    goto :goto_1

    .line 157
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 158
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SelectAllView;->isOutsideView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->invalidate()V

    goto :goto_1

    .line 170
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SelectAllView;->isOutsideView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->invalidate()V

    goto :goto_1

    .line 178
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->invalidate()V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 99
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->getWidth()I

    move-result v6

    .line 106
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectAllView;->getHeight()I

    move-result v7

    .line 109
    .local v7, h:I
    int-to-float v3, v6

    int-to-float v4, v7

    iget v5, p0, Lcom/android/gallery3d/ui/SelectAllView;->backgroundColorResID:I

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v3, p1

    move v4, v8

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mLayoutRTL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectAllText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v0

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginLeft:I

    sub-int v10, v0, v2

    .line 121
    .local v10, x:I
    :goto_1
    iget v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->paintViewHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    iget v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    .line 122
    .local v11, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mSelectAllText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v10, v11}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 125
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mLayoutRTL:Z

    if-eqz v0, :cond_4

    iget v10, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginRight:I

    .line 126
    :goto_2
    iget v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->paintViewHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    iget v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckButtonSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    .line 130
    iget-object v9, p0, Lcom/android/gallery3d/ui/SelectAllView;->mUnCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 131
    .local v9, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isSelectAll:Z

    if-eqz v0, :cond_6

    .line 132
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    if-eqz v0, :cond_5

    iget-object v9, p0, Lcom/android/gallery3d/ui/SelectAllView;->mChechedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 136
    :goto_3
    iget v12, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckButtonSize:I

    iget v13, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckButtonSize:I

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 140
    iget v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->bottomLineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->bottomLineHeight:I

    int-to-float v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/SelectAllView;->bottomLineColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 142
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 143
    return-void

    .end local v6           #w:I
    .end local v7           #h:I
    .end local v9           #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    move v0, v8

    .line 103
    goto :goto_0

    .line 120
    .restart local v6       #w:I
    .restart local v7       #h:I
    :cond_3
    iget v10, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginLeft:I

    goto :goto_1

    .line 125
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->mMarginRight:I

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckButtonSize:I

    sub-int v10, v0, v2

    goto :goto_2

    .line 132
    .restart local v9       #icon:Lcom/android/gallery3d/ui/ResourceTexture;
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/ui/SelectAllView;->mCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_3

    .line 134
    :cond_6
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectAllView;->isPressed:Z

    if-eqz v0, :cond_7

    iget-object v9, p0, Lcom/android/gallery3d/ui/SelectAllView;->mUnCheckedPressIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    :goto_4
    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/ui/SelectAllView;->mUnCheckedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_4
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectAllView;->reset()V

    .line 199
    :cond_0
    return-void
.end method
