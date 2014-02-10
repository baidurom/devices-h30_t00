.class Lcom/android/internal/widget/ActionBarView$HwHomeView;
.super Lcom/android/internal/widget/ActionBarView$HomeView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwHomeView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1796
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1797
    return-void
.end method


# virtual methods
.method public getStartOffset()I
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1813
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->onFinishInflate()V

    .line 1814
    const/high16 v0, 0x30d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    .line 1815
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1873
    sub-int v21, p5, p3

    div-int/lit8 v20, v21, 0x2

    .line 1877
    .local v20, vCenter:I
    const/16 v17, 0x0

    .line 1878
    .local v17, upOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->isRtlLocale()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1883
    .local v7, actionbardividerLP:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 1884
    .local v5, actionbarDividerHeight:I
    div-int/lit8 v21, v5, 0x2

    sub-int v6, v20, v21

    .line 1885
    .local v6, actionbarDividerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 1886
    .local v8, dividerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v6, v5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v8, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 1889
    .local v16, upLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1890
    .local v15, upHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1891
    .local v19, upWidth:I
    div-int/lit8 v21, v15, 0x2

    sub-int v18, v20, v21

    .line 1892
    .local v18, upTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    add-int v22, v19, v8

    add-int v23, v18, v15

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1893
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 1915
    :goto_0
    add-int p2, p2, v17

    .line 1918
    .end local v5           #actionbarDividerHeight:I
    .end local v6           #actionbarDividerTop:I
    .end local v7           #actionbardividerLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v8           #dividerWidth:I
    .end local v15           #upHeight:I
    .end local v16           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #upTop:I
    .end local v19           #upWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1920
    .local v12, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 1921
    .local v10, iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 1922
    .local v14, iconWidth:I
    sub-int v21, p4, p2

    div-int/lit8 v9, v21, 0x2

    .line 1923
    .local v9, hCenter:I
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    div-int/lit8 v22, v14, 0x2

    sub-int v22, v9, v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v11, v17, v21

    .line 1924
    .local v11, iconLeft:I
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    div-int/lit8 v22, v10, 0x2

    sub-int v22, v20, v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1925
    .local v13, iconTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    add-int v22, v11, v14

    add-int v23, v13, v10

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v13, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1927
    .end local v9           #hCenter:I
    .end local v10           #iconHeight:I
    .end local v11           #iconLeft:I
    .end local v12           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #iconTop:I
    .end local v14           #iconWidth:I
    :cond_1
    return-void

    .line 1895
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 1896
    .restart local v16       #upLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1897
    .restart local v15       #upHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1898
    .restart local v19       #upWidth:I
    div-int/lit8 v21, v15, 0x2

    sub-int v18, v20, v21

    .line 1899
    .restart local v18       #upTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v15

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1900
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1903
    .restart local v7       #actionbardividerLP:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 1904
    .restart local v5       #actionbarDividerHeight:I
    div-int/lit8 v21, v5, 0x2

    sub-int v6, v20, v21

    .line 1906
    .restart local v6       #actionbarDividerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 1908
    .restart local v8       #dividerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    sub-int v22, p4, v8

    add-int v23, v6, v5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p4

    move/from16 v3, v23

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1821
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1822
    .local v10, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpWidth:I

    .line 1824
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v11, 0x0

    .line 1825
    .local v11, width:I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1828
    .local v6, height:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1831
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v11

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1836
    .local v9, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 1838
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1841
    .end local v9           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1842
    .local v12, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1843
    .local v7, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1844
    .local v13, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1846
    .local v8, heightSize:I
    sparse-switch v12, :sswitch_data_0

    .line 1857
    :goto_1
    sparse-switch v7, :sswitch_data_1

    .line 1868
    :goto_2
    invoke-virtual {p0, v11, v6}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->setMeasuredDimension(II)V

    .line 1869
    return-void

    .line 1824
    .end local v6           #height:I
    .end local v7           #heightMode:I
    .end local v8           #heightSize:I
    .end local v11           #width:I
    .end local v12           #widthMode:I
    .end local v13           #widthSize:I
    :cond_1
    iget v11, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpWidth:I

    goto :goto_0

    .line 1848
    .restart local v6       #height:I
    .restart local v7       #heightMode:I
    .restart local v8       #heightSize:I
    .restart local v11       #width:I
    .restart local v12       #widthMode:I
    .restart local v13       #widthSize:I
    :sswitch_0
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1849
    goto :goto_1

    .line 1851
    :sswitch_1
    move v11, v13

    .line 1852
    goto :goto_1

    .line 1859
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1860
    goto :goto_2

    .line 1862
    :sswitch_3
    move v6, v8

    .line 1863
    goto :goto_2

    .line 1846
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1857
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setUp(Z)V
    .locals 4
    .parameter "isUp"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1800
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 1801
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1805
    return-void

    :cond_0
    move v0, v2

    .line 1801
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1803
    goto :goto_1
.end method
