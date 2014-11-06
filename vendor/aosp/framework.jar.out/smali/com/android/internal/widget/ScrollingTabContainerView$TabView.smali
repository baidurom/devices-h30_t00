.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mForList:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "tab"
    .parameter "forList"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 736
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 737
    iput-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 739
    iput-boolean p4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mForList:Z

    .line 742
    if-eqz p4, :cond_0

    .line 743
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 747
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 752
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 862
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 863
    .local v3, screenPos:[I
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V

    .line 865
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 866
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v5

    .line 867
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v2

    .line 868
    .local v2, height:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 870
    .local v4, screenWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 873
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 876
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 877
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 756
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 759
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 763
    :cond_0
    return-void
.end method

.method public setTextViewFontSizeOfHw(II)V
    .locals 2
    .parameter "unit"
    .parameter "fontSize"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 772
    :cond_0
    return-void
.end method

.method public update()V
    .locals 14

    .prologue
    .line 780
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 781
    .local v7, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 782
    .local v0, custom:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 783
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 784
    .local v1, customParent:Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 785
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #customParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 786
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 788
    :cond_1
    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 789
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    :cond_2
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    .line 791
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    :cond_3
    :goto_0
    return-void

    .line 795
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 796
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 797
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 800
    :cond_5
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 801
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 803
    .local v8, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_b

    .line 804
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 805
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 806
    .local v4, iconView:Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 808
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 809
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    const/4 v10, 0x0

    invoke-virtual {p0, v4, v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 811
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 813
    .end local v4           #iconView:Landroid/widget/ImageView;
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    :cond_7
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 821
    .local v2, hasText:Z
    :goto_2
    if-eqz v2, :cond_e

    .line 822
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    .line 824
    const/4 v9, 0x0

    .line 825
    .local v9, textView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z
    invoke-static {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mForList:Z

    if-eqz v10, :cond_d

    .line 826
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "androidhwext:style/Widget.Emui.ActionBar.SpinnerText"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 827
    .local v6, styleID:I
    new-instance v9, Landroid/widget/TextView;

    .end local v9           #textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 833
    .end local v6           #styleID:I
    .restart local v9       #textView:Landroid/widget/TextView;
    :goto_3
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 834
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 836
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 837
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 839
    iput-object v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 841
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #textView:Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 849
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 852
    :cond_a
    if-nez v2, :cond_f

    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 853
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 815
    .end local v2           #hasText:Z
    :cond_b
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 816
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 817
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 820
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 829
    .restart local v2       #hasText:Z
    .restart local v9       #textView:Landroid/widget/TextView;
    :cond_d
    new-instance v9, Landroid/widget/TextView;

    .end local v9           #textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x10102f5

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v9       #textView:Landroid/widget/TextView;
    goto :goto_3

    .line 843
    .end local v9           #textView:Landroid/widget/TextView;
    :cond_e
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 844
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 855
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 856
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
