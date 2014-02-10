.class Landroid/widget/Editor$HwActionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HwActionPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    }
.end annotation


# static fields
.field private static final DIVIDER_PADDING:I = 0x8

.field private static final POPUP_TEXT_LAYOUT_HW:I = 0x307001f


# instance fields
.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mOldTextSize:I

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 4104
    iput-object p1, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 4114
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4478
    return-void
.end method

.method private restorePos([I)Z
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4443
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    move v3, v4

    .line 4474
    :goto_0
    return v3

    .line 4448
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v5, :cond_4

    .line 4450
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionStartHandleView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v5}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)I

    move-result v5

    if-lez v5, :cond_2

    .line 4452
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget v5, v5, Landroid/widget/Editor$HandleView;->mStartHandlePosX:I

    aput v5, p1, v4

    .line 4453
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v4, v4, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mStartHandlePosY:I

    aput v4, p1, v3

    .line 4454
    aget v4, p1, v3

    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v3

    .line 4455
    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->getTextOffset()I

    move-result v2

    .line 4456
    .local v2, offset:I
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4457
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4458
    .local v1, line:I
    aget v4, p1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, p1, v3

    goto :goto_0

    .line 4461
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #offset:I
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionEndHandleView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mHandleMode:I
    invoke-static {v5}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)I

    move-result v5

    if-lez v5, :cond_3

    .line 4463
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionStartHandleView;->dismiss()V

    .line 4464
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget v5, v5, Landroid/widget/Editor$HandleView;->mEndHandlePosX:I

    aput v5, p1, v4

    .line 4465
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v4, v4, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mEndHandlePosY:I

    aput v4, p1, v3

    .line 4466
    aget v4, p1, v3

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v5, v5, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p1, v3

    goto/16 :goto_0

    .line 4470
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v3, v3, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionStartHandleView;->dismiss()V

    move v3, v4

    .line 4471
    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 4474
    goto/16 :goto_0
.end method


# virtual methods
.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 4118
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4119
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4120
    const v2, 0x10900d3

    .line 4122
    .local v2, textResId:I
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4125
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4128
    .local v3, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v4, :cond_0

    .line 4129
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 4131
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v5

    iget v5, v5, Landroid/widget/Editor$EditTextAddtionConfig;->mTextDividerRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4132
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 4133
    const v2, 0x307001f

    .line 4134
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundRes:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4141
    :goto_0
    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 4143
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    .line 4144
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4145
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4146
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v5, 0x3020028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4147
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4148
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4149
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4151
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 4152
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4153
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4154
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v5, 0x104000d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4155
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4156
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4157
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4159
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 4160
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4161
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4162
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v5, 0x1040001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4163
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4164
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4165
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4167
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 4168
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4169
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4170
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v5, 0x1040003

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4171
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4172
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4173
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4175
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 4176
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4177
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4178
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v5, 0x104000b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4179
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4180
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4181
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4183
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 4184
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4185
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4186
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v5, 0x10403c1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4187
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4188
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4189
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4190
    return-void

    .line 4137
    :cond_0
    const v4, 0x10805c4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected measureContent()V
    .locals 26

    .prologue
    .line 4279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 4280
    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    const/high16 v25, -0x8000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 4282
    .local v23, widthMeasureSpec:I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    const/high16 v25, -0x8000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 4284
    .local v10, heightMeasureSpec:I
    const/16 v22, 0x0

    .line 4285
    .local v22, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4286
    .local v16, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_1

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    #setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v25}, Landroid/widget/Editor;->access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 4288
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v22, v22, v24

    .line 4291
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v22, v22, v24

    .line 4292
    const/16 v19, 0x0

    .line 4293
    .local v19, textViewTotalWidth:I
    const/16 v21, 0x0

    .line 4294
    .local v21, visibleChildCount:I
    const/4 v15, 0x1

    .line 4295
    .local v15, needResetTextSize:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v24, v0

    if-gez v24, :cond_2

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getTextSize()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4297
    const/4 v15, 0x0

    .line 4299
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v24, v0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 4300
    .local v14, minMeasureSpec:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 4301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 4302
    .local v20, v:Landroid/widget/TextView;
    if-eqz v15, :cond_3

    .line 4303
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 4305
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4306
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4307
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v24

    if-nez v24, :cond_4

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v24, v0

    add-int v19, v19, v24

    .line 4313
    :goto_1
    add-int/lit8 v21, v21, 0x1

    .line 4300
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 4311
    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    add-int v19, v19, v24

    goto :goto_1

    .line 4317
    .end local v20           #v:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 4318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/LinearLayout;

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v8

    .line 4319
    .local v8, dividerWidth:I
    add-int/lit8 v24, v21, -0x1

    mul-int v7, v24, v8

    .line 4320
    .local v7, dividerTotalWidth:I
    add-int v22, v22, v7

    .line 4321
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4323
    .local v3, currentTextSize:I
    :cond_7
    add-int v24, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinTextSizeInPopup:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v3, v0, :cond_a

    .line 4324
    add-int/lit8 v3, v3, -0x1

    .line 4325
    const/16 v19, 0x0

    .line 4326
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 4327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 4328
    .restart local v20       #v:Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v24

    if-nez v24, :cond_8

    .line 4329
    int-to-float v0, v3

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 4330
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4331
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4332
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v24, v0

    add-int v19, v19, v24

    .line 4326
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4335
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    add-int v19, v19, v24

    goto :goto_3

    .line 4340
    .end local v20           #v:Landroid/widget/TextView;
    :cond_a
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v11, v0, :cond_c

    .line 4341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 4342
    .restart local v20       #v:Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v24

    if-nez v24, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 4343
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4344
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4345
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4340
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4349
    .end local v20           #v:Landroid/widget/TextView;
    :cond_c
    add-int v24, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 4351
    add-int v24, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    .line 4352
    .local v5, decreaseNeed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 4353
    .local v12, lastView:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    sub-int v4, v24, v25

    .line 4354
    .local v4, decrease:I
    if-lt v4, v5, :cond_e

    .line 4355
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v24

    sub-int v9, v24, v5

    .line 4356
    .local v9, finalWidth:I
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4357
    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4358
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v12, v0, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4359
    sub-int v19, v19, v5

    .line 4360
    const/4 v5, 0x0

    .line 4370
    .end local v9           #finalWidth:I
    :goto_5
    if-lez v5, :cond_10

    .line 4371
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4372
    .local v18, sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v11, v0, :cond_f

    .line 4373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4374
    .local v20, v:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_d

    .line 4375
    new-instance v24, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;-><init>(Landroid/widget/Editor$HwActionPopupWindow;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4372
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 4362
    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v20           #v:Landroid/view/View;
    :cond_e
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4363
    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4364
    invoke-virtual {v12, v14, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4365
    sub-int v19, v19, v4

    .line 4366
    sub-int/2addr v5, v4

    goto :goto_5

    .line 4378
    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    :cond_f
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    .line 4379
    .local v17, sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v24, v0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 4381
    .local v13, maxMeasureSpec:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v11, v24, -0x1

    :goto_7
    if-ltz v11, :cond_10

    .line 4382
    aget-object v24, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$4000(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v25, v0

    sub-int v4, v24, v25

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v25, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$4100(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 4384
    .local v20, v:Landroid/widget/TextView;
    if-lt v4, v5, :cond_12

    .line 4385
    aget-object v24, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$4000(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v24

    sub-int v9, v24, v5

    .line 4386
    .restart local v9       #finalWidth:I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4387
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4388
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4389
    sub-int v19, v19, v5

    .line 4390
    const/4 v5, 0x0

    .line 4403
    .end local v3           #currentTextSize:I
    .end local v4           #decrease:I
    .end local v5           #decreaseNeed:I
    .end local v7           #dividerTotalWidth:I
    .end local v8           #dividerWidth:I
    .end local v9           #finalWidth:I
    .end local v12           #lastView:Landroid/widget/TextView;
    .end local v13           #maxMeasureSpec:I
    .end local v17           #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v20           #v:Landroid/widget/TextView;
    :cond_10
    add-int v22, v22, v19

    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v22, v0

    .line 4405
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/high16 v25, 0x4000

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->measure(II)V

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4407
    return-void

    .line 4393
    .restart local v3       #currentTextSize:I
    .restart local v4       #decrease:I
    .restart local v5       #decreaseNeed:I
    .restart local v7       #dividerTotalWidth:I
    .restart local v8       #dividerWidth:I
    .restart local v12       #lastView:Landroid/widget/TextView;
    .restart local v13       #maxMeasureSpec:I
    .restart local v17       #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .restart local v20       #v:Landroid/widget/TextView;
    :cond_12
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4394
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4395
    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v10}, Landroid/widget/TextView;->measure(II)V

    .line 4396
    sub-int v19, v19, v4

    .line 4397
    sub-int/2addr v5, v4

    .line 4381
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4252
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 4253
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->selectCurrentWord()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    .line 4254
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 4273
    :goto_0
    return-void

    .line 4256
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 4257
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    .line 4259
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x1

    #setter for: Landroid/widget/Editor;->mIsSelectedAll:Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3902(Landroid/widget/Editor;Z)Z

    .line 4261
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 4263
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 4264
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4265
    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->hide()V

    goto :goto_0

    .line 4267
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 4268
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4269
    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->hide()V

    goto :goto_0

    .line 4272
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 14

    .prologue
    .line 4194
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    .line 4195
    .local v2, canPaste:Z
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    .line 4197
    .local v5, canSuggest:Z
    :goto_0
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectCurrentWord()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsInSelectionActionMode:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hasPasswordTransformationMethod()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v3, 0x1

    .line 4200
    .local v3, canSelect:Z
    :goto_1
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectAll()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x1

    .line 4202
    .local v4, canSelectAll:Z
    :goto_2
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCut()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v1, 0x1

    .line 4203
    .local v1, canCut:Z
    :goto_3
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_5

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCopy()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v0, 0x1

    .line 4204
    .local v0, canCopy:Z
    :goto_4
    iget-object v13, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4205
    iget-object v13, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4206
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4207
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4208
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4209
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4212
    const/4 v11, 0x0

    .line 4214
    .local v11, viewCount:I
    const/4 v8, 0x0

    .line 4216
    .local v8, lastViewNum:I
    const/4 v9, 0x1

    .line 4218
    .local v9, leftFlag:Z
    const/4 v7, 0x0

    .local v7, k:I
    :goto_b
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_c

    .line 4219
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 4220
    .local v10, v:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 4221
    add-int/lit8 v11, v11, 0x1

    .line 4222
    move v8, v7

    .line 4218
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4195
    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v3           #canSelect:Z
    .end local v4           #canSelectAll:Z
    .end local v5           #canSuggest:Z
    .end local v7           #k:I
    .end local v8           #lastViewNum:I
    .end local v9           #leftFlag:Z
    .end local v10           #v:Landroid/widget/TextView;
    .end local v11           #viewCount:I
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4197
    .restart local v5       #canSuggest:Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4200
    .restart local v3       #canSelect:Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4202
    .restart local v4       #canSelectAll:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 4203
    .restart local v1       #canCut:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 4204
    .restart local v0       #canCopy:Z
    :cond_6
    const/16 v12, 0x8

    goto :goto_5

    .line 4205
    :cond_7
    const/16 v12, 0x8

    goto :goto_6

    .line 4206
    :cond_8
    const/16 v12, 0x8

    goto :goto_7

    .line 4207
    :cond_9
    const/16 v12, 0x8

    goto :goto_8

    .line 4208
    :cond_a
    const/16 v12, 0x8

    goto :goto_9

    .line 4209
    :cond_b
    const/16 v12, 0x8

    goto :goto_a

    .line 4226
    .restart local v7       #k:I
    .restart local v8       #lastViewNum:I
    .restart local v9       #leftFlag:Z
    .restart local v11       #viewCount:I
    :cond_c
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_d

    .line 4227
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 4228
    .restart local v10       #v:Landroid/widget/TextView;
    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 4229
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_f

    .line 4230
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundSingleRes:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4245
    .end local v10           #v:Landroid/widget/TextView;
    :cond_d
    if-nez v2, :cond_12

    if-nez v5, :cond_12

    if-nez v3, :cond_12

    if-nez v4, :cond_12

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 4248
    :goto_d
    return-void

    .line 4233
    .restart local v10       #v:Landroid/widget/TextView;
    :cond_e
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_f

    .line 4234
    if-eqz v9, :cond_10

    .line 4235
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundLeftRes:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4236
    const/4 v9, 0x0

    .line 4226
    :cond_f
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 4237
    :cond_10
    if-ne v6, v8, :cond_11

    .line 4238
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundRightRes:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_e

    .line 4240
    :cond_11
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundMediumRes:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_e

    .line 4246
    .end local v10           #v:Landroid/widget/TextView;
    :cond_12
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->postInvalidate()V

    .line 4247
    invoke-super {p0}, Landroid/widget/Editor$ActionPopupWindow;->directlyShow()V

    goto :goto_d
.end method

.method protected updatePosition(II)V
    .locals 8
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v6, 0x0

    .line 4411
    iget v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v2, p1, v5

    .line 4412
    .local v2, positionX:I
    iget v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v3, p2, v5

    .line 4416
    .local v3, positionY:I
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 4417
    .local v1, location:[I
    invoke-direct {p0, v1}, Landroid/widget/Editor$HwActionPopupWindow;->restorePos([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4418
    aget v2, v1, v6

    .line 4419
    const/4 v5, 0x1

    aget v3, v1, v5

    .line 4421
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #setter for: Landroid/widget/Editor;->mIsSelectedAll:Z
    invoke-static {v5, v6}, Landroid/widget/Editor;->access$3902(Landroid/widget/Editor;Z)Z

    .line 4423
    invoke-virtual {p0, v3}, Landroid/widget/Editor$HwActionPopupWindow;->clipVertically(I)I

    move-result v3

    .line 4428
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4429
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 4430
    .local v4, width:I
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    iget-object v7, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v7}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v7

    iget v7, v7, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    sub-int/2addr v5, v7

    :goto_0
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4431
    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v5

    iget v5, v5, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    :goto_1
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4433
    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4434
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4439
    :goto_2
    return-void

    .line 4430
    :cond_1
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    goto :goto_0

    :cond_2
    move v5, v6

    .line 4431
    goto :goto_1

    .line 4436
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v5, v7, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method
