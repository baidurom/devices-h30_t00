.class public Lcom/android/gallery3d/ui/ToolbarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "ToolbarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ToolbarView$1;,
        Lcom/android/gallery3d/ui/ToolbarView$PressedState;,
        Lcom/android/gallery3d/ui/ToolbarView$OnActListener;
    }
.end annotation


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final DEFAULT_DISABLED_COLOR:I = 0x33000000

.field private static final DEFAULT_ENABLED_COLOR:I = -0x1000000

.field private static final GRAY:I = 0x33000000

.field public static final RED:I = -0x2bc1db

.field private static final WHITE:I = -0x1


# instance fields
.field private final mBarMargin:I

.field private mCancelText:Lcom/android/gallery3d/ui/StringTexture;

.field private mContext:Landroid/content/Context;

.field private mDisabledColor:I

.field private mDoneString:Ljava/lang/String;

.field private mDoneText:Lcom/android/gallery3d/ui/StringTexture;

.field private mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

.field private mEnabledColor:I

.field private mLayoutRTL:Z

.field private mNeedProcess:Z

.field private mOnActListener:Lcom/android/gallery3d/ui/ToolbarView$OnActListener;

.field private final mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private final mSeparator:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mSeparatorHeight:I

.field private final mSeparatorWidth:I

.field private final mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 6
    .parameter "context"
    .parameter "selectionManager"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 21
    const/high16 v1, -0x100

    iput v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mEnabledColor:I

    .line 22
    const/high16 v1, 0x3300

    iput v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDisabledColor:I

    .line 39
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    .line 42
    sget-object v1, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, r:Landroid/content/res/Resources;
    iput v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    .line 60
    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorHeight:I

    .line 61
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorWidth:I

    .line 62
    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    .line 64
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    const/high16 v3, 0x7f02

    invoke-direct {v1, p1, v3}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 65
    new-instance v1, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;

    const v3, 0x7f020258

    invoke-direct {v1, p1, v3}, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 66
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f0200ad

    invoke-direct {v1, p1, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparator:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 68
    const v1, 0x7f0d03a1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/ui/ToolbarView;->mEnabledColor:I

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mCancelText:Lcom/android/gallery3d/ui/StringTexture;

    .line 71
    const/16 v1, 0x80

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    .line 74
    const v1, 0x7f0d03a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDisabledColor:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    .line 76
    return-void

    :cond_0
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method private drawPressedPanel(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "startX"
    .parameter "startY"
    .parameter "totalWidth"
    .parameter "totalHeight"

    .prologue
    .line 158
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$1;->$SwitchMap$com$android$gallery3d$ui$ToolbarView$PressedState:[I

    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mPanelPressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    div-int/lit8 v4, p4, 0x2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 160
    :cond_0
    div-int/lit8 v0, p4, 0x2

    add-int/2addr p2, v0

    goto :goto_1

    .line 164
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    if-eqz v0, :cond_1

    div-int/lit8 v0, p4, 0x2

    add-int/2addr p2, v0

    .line 165
    :cond_1
    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private inCancelButton(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 221
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 222
    .local v3, y:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->getWidth()I

    move-result v1

    .line 223
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->getHeight()I

    move-result v0

    .line 224
    .local v0, h:I
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    if-eqz v6, :cond_2

    div-int/lit8 v6, v1, 0x2

    if-lt v2, v6, :cond_1

    if-ge v2, v1, :cond_1

    if-ltz v3, :cond_1

    if-ge v3, v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_3

    div-int/lit8 v6, v1, 0x2

    if-ge v2, v6, :cond_3

    if-ltz v3, :cond_3

    if-lt v3, v0, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private isMoveOutsideView(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 230
    .local v1, y:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->getHeight()I

    move-result v0

    .line 231
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

.method private isToolbarViewNotPressed()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    sget-object v1, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parsePressedEventState(Landroid/view/MotionEvent;)Lcom/android/gallery3d/ui/ToolbarView$PressedState;
    .locals 1
    .parameter "event"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->isMoveOutsideView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 250
    :goto_0
    return-object v0

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->inCancelButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_CANCEL_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    goto :goto_0

    .line 247
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    if-eqz v0, :cond_3

    .line 248
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_DONE_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    goto :goto_0

    .line 250
    :cond_3
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    goto :goto_0
.end method

.method private resetPressedFlag()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 240
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/ui/ToolbarView;->setMeasuredSize(II)V

    .line 81
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 182
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->parsePressedEventState(Landroid/view/MotionEvent;)Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    :cond_1
    :goto_1
    move v1, v2

    .line 215
    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ToolbarView;->isToolbarViewNotPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ToolbarView;->resetPressedFlag()V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    .line 189
    iget-object v3, p0, Lcom/android/gallery3d/ui/ToolbarView;->mOnActListener:Lcom/android/gallery3d/ui/ToolbarView$OnActListener;

    if-eqz v3, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->inCancelButton(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mOnActListener:Lcom/android/gallery3d/ui/ToolbarView$OnActListener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ToolbarView$OnActListener;->onCancel()V

    goto :goto_1

    .line 192
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mOnActListener:Lcom/android/gallery3d/ui/ToolbarView$OnActListener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ToolbarView$OnActListener;->onDone()V

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ToolbarView;->isToolbarViewNotPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->parsePressedEventState(Landroid/view/MotionEvent;)Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    move-result-object v0

    .line 201
    .local v0, tmpState:Lcom/android/gallery3d/ui/ToolbarView$PressedState;
    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    if-eq v0, v1, :cond_3

    .line 202
    iput-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDownOnView:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    :cond_3
    move v1, v2

    .line 205
    goto :goto_0

    .line 209
    .end local v0           #tmpState:Lcom/android/gallery3d/ui/ToolbarView$PressedState;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ToolbarView;->resetPressedFlag()V

    .line 210
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    goto :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 131
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->getWidth()I

    move-result v12

    .line 134
    .local v12, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->getHeight()I

    move-result v5

    .line 136
    .local v5, h:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v12, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 137
    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v4, v12, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/ToolbarView;->drawPressedPanel(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 139
    iget v8, p0, Lcom/android/gallery3d/ui/ToolbarView;->mBarMargin:I

    .line 142
    .local v8, x:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    mul-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mCancelText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mCancelText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getTextHeight()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v5, v0

    div-int/lit8 v9, v0, 0x2

    .line 144
    .local v9, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mCancelText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v8, v9}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 146
    iget v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorWidth:I

    sub-int v0, v12, v0

    div-int/lit8 v8, v0, 0x2

    .line 147
    iget v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorHeight:I

    sub-int v0, v5, v0

    div-int/lit8 v9, v0, 0x2

    .line 148
    iget-object v6, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparator:Lcom/android/gallery3d/ui/ResourceTexture;

    iget v10, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorWidth:I

    iget v11, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSeparatorHeight:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 150
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mLayoutRTL:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    mul-int/2addr v0, v12

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getTextHeight()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v5, v0

    div-int/lit8 v9, v0, 0x2

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v8, v9}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 154
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 155
    return-void

    .line 142
    .end local v9           #y:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    .restart local v9       #y:I
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public setDoneTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setDoneTitle(II)V
    .locals 1
    .parameter "titleId"
    .parameter "color"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public setDoneTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneString:Ljava/lang/String;

    .line 87
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mEnabledColor:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDisabledColor:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    .line 91
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    goto :goto_0
.end method

.method public setDoneTitle(Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "color"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneString:Ljava/lang/String;

    .line 102
    iput p2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mEnabledColor:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDisabledColor:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    goto :goto_0
.end method

.method public setOnActListener(Lcom/android/gallery3d/ui/ToolbarView$OnActListener;)V
    .locals 0
    .parameter "onActListener"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/gallery3d/ui/ToolbarView;->mOnActListener:Lcom/android/gallery3d/ui/ToolbarView$OnActListener;

    .line 261
    return-void
.end method

.method public updateTitleCount(I)V
    .locals 5
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    iget-object v4, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->inHiddenMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->inPrivateMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/ToolbarView;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getProcessingList(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    .line 121
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, title:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mEnabledColor:I

    .line 124
    .local v0, color:I
    :goto_2
    iget v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mTextSize:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDoneText:Lcom/android/gallery3d/ui/StringTexture;

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ToolbarView;->invalidate()V

    .line 126
    return-void

    .end local v0           #color:I
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    if-lt p1, v2, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ToolbarView;->mNeedProcess:Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_3

    .line 123
    .restart local v1       #title:Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/ToolbarView;->mDisabledColor:I

    goto :goto_2
.end method
