.class public Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AirSharingTipsManager"
.end annotation


# static fields
.field private static final DELAY:I = 0x1f4

.field private static final KEY_TIPS:Ljava/lang/String; = "key-tips"


# instance fields
.field private mArrowBitmap:Landroid/graphics/Bitmap;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mTips:Landroid/view/View;

.field private mTipsFontSize:I

.field private mTipsString:Ljava/lang/String;

.field private mWindowsManager:Landroid/view/WindowManager;

.field private needTips:Z

.field private onShowTips:Z

.field private showTips:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2807
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2808
    iget-object v2, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2809
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "key-tips"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z

    .line 2810
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    .line 2811
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    .line 2812
    new-instance v2, Landroid/view/View;

    iget-object v3, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    .line 2813
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;

    invoke-direct {v3, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2819
    iget-object v2, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f1000fb

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mRootView:Landroid/widget/RelativeLayout;

    .line 2821
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 2822
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2824
    :cond_0
    iget-object v2, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mWindowsManager:Landroid/view/WindowManager;

    .line 2826
    iget-object v2, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2827
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f02001d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 2828
    const v2, 0x7f0d03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTipsString:Ljava/lang/String;

    .line 2829
    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTipsFontSize:I

    .line 2830
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2794
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2794
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2794
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2794
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z

    return v0
.end method

.method private drawTipsBackground(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 33
    .parameter "res"

    .prologue
    .line 2876
    new-instance v28, Landroid/util/DisplayMetrics;

    invoke-direct/range {v28 .. v28}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2877
    .local v28, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mWindowsManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2878
    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 2879
    .local v20, displayWidth:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    .line 2880
    .local v19, displayHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 2881
    .local v31, tipsBackground:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2882
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v29, Landroid/graphics/Paint;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Paint;-><init>()V

    .line 2884
    .local v29, paint:Landroid/graphics/Paint;
    const v3, 0x7f0a0044

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2886
    const/16 v16, 0x0

    .line 2888
    .local v16, actionMenuView:Lcom/android/internal/view/menu/ActionMenuView;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->reflectActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 2894
    :goto_0
    if-nez v16, :cond_1

    .line 2940
    :cond_0
    :goto_1
    return-object v31

    .line 2889
    :catch_0
    move-exception v21

    .line 2890
    .local v21, e:Ljava/lang/NoSuchFieldException;
    const-string v3, "AirSharing_PhotoPage"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2891
    .end local v21           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v21

    .line 2892
    .local v21, e:Ljava/lang/Exception;
    const-string v3, "AirSharing_PhotoPage"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2895
    .end local v21           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/view/menu/ActionMenuView;->getLeft()I

    move-result v26

    .line 2896
    .local v26, menuLeft:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/view/menu/ActionMenuView;->getTop()I

    move-result v27

    .line 2897
    .local v27, menuTop:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v25

    .line 2899
    .local v25, menuCount:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 2900
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2901
    .local v18, child:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f100246

    if-ne v3, v4, :cond_2

    .line 2902
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 2903
    .local v24, itemWidth:I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 2904
    .local v23, itemLeft:I
    const v3, 0x7f0b00f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 2905
    .local v32, topMargin:I
    add-int v30, v26, v23

    .line 2906
    .local v30, targetLeft:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v24, v3

    div-int/lit8 v17, v3, 0x2

    .line 2908
    .local v17, arrowOffset:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 2909
    .local v7, clearPaint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2910
    add-int v3, v30, v17

    int-to-float v3, v3

    add-int v4, v27, v32

    int-to-float v4, v4

    add-int v5, v30, v24

    sub-int v5, v5, v17

    int-to-float v5, v5

    add-int v6, v27, v32

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    add-int v4, v30, v17

    int-to-float v4, v4

    add-int v5, v27, v32

    int-to-float v5, v5

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2923
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 2924
    .local v10, textPaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTipsFontSize:I

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2925
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2926
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2927
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTipsString:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v11, v3

    .line 2929
    .local v11, widthLimit:I
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTipsString:Ljava/lang/String;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2932
    .local v8, layout:Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v26

    div-int/lit8 v4, v11, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-int v4, v27, v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2935
    invoke-virtual {v8, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 2899
    .end local v7           #clearPaint:Landroid/graphics/Paint;
    .end local v8           #layout:Landroid/text/StaticLayout;
    .end local v10           #textPaint:Landroid/text/TextPaint;
    .end local v11           #widthLimit:I
    .end local v17           #arrowOffset:I
    .end local v23           #itemLeft:I
    .end local v24           #itemWidth:I
    .end local v30           #targetLeft:I
    .end local v32           #topMargin:I
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2
.end method

.method private reflectActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2945
    const-class v4, Lcom/android/internal/app/ActionBarImpl;

    const-string v5, "mActionView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2946
    .local v0, actionBarField:Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2947
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 2949
    .local v1, actionBarView:Lcom/android/internal/widget/ActionBarView;
    const-class v4, Lcom/android/internal/widget/AbsActionBarView;

    const-string v5, "mMenuView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2950
    .local v2, actionMenuField:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2951
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    .line 2952
    .local v3, actionMenuView:Lcom/android/internal/view/menu/ActionMenuView;
    return-object v3
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2981
    :cond_0
    return-void
.end method

.method public hideTips(Z)V
    .locals 2
    .parameter "noLongerRemind"

    .prologue
    .line 2961
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    if-nez v0, :cond_0

    .line 2965
    :goto_0
    return-void

    .line 2962
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    .line 2963
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mWindowsManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2964
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0
.end method

.method public noMoreTips()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2971
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z

    if-nez v1, :cond_0

    .line 2975
    :goto_0
    return-void

    .line 2972
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2973
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key-tips"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2974
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
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
    .line 2986
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    if-eqz v0, :cond_1

    .line 2990
    :cond_0
    :goto_0
    return-void

    .line 2989
    :cond_1
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTipsDelay(I)V

    goto :goto_0
.end method

.method public showTips()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2843
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2844
    :cond_0
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    .line 2845
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 2873
    :goto_0
    return-void

    .line 2848
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    .line 2850
    .local v2, refresh:Z
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z

    .line 2851
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    .line 2853
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2854
    .local v3, res:Landroid/content/res/Resources;
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->drawTipsBackground(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2855
    .local v4, tipsBackground:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2856
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2857
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v0, :cond_2

    .line 2858
    .local v0, isPort:Z
    :goto_1
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2859
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2860
    if-eqz v0, :cond_3

    .line 2861
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2866
    :goto_2
    const/4 v5, -0x3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2867
    if-eqz v2, :cond_4

    .line 2868
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mWindowsManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    invoke-interface {v5, v6, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2872
    :goto_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showBars()V
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .end local v0           #isPort:Z
    :cond_2
    move v0, v5

    .line 2857
    goto :goto_1

    .line 2863
    .restart local v0       #isPort:Z
    :cond_3
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x408

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 2870
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mWindowsManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->mTips:Landroid/view/View;

    invoke-interface {v5, v6, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public showTipsDelay()V
    .locals 1

    .prologue
    .line 2833
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTipsDelay(I)V

    .line 2834
    return-void
.end method

.method public showTipsDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x23

    .line 2837
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z

    .line 2838
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2839
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2840
    return-void
.end method
