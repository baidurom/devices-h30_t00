.class public Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;
.super Ljava/lang/Object;


# static fields
.field private static final BUTTON_BACKGROUND_PNG:Ljava/lang/String; = "huaweipushclose.9.png"

.field private static final DEAFULT_TIME_OUT:I = 0xea60

.field private static final JS_ENTITY:Ljava/lang/String; = "huawei_push"

.field public static final TAG:Ljava/lang/String; = "PushSelfShowLog"


# instance fields
.field public downloadHandler:Landroid/os/Handler;

.field public dtl:Lcom/huawei/android/pushselfshow/b/d;

.field private indexFileUrl:Ljava/lang/String;

.field private jsHandler:Landroid/os/Handler;

.field private layout:Landroid/widget/RelativeLayout;

.field private lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

.field private lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

.field private m_activity:Landroid/app/Activity;

.field private paramsFP:Landroid/widget/RelativeLayout$LayoutParams;

.field public pushJavaScript:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

.field private pushmsg:Lcom/huawei/android/pushselfshow/a/a;

.field public shot_succ_tips_en:Ljava/lang/String;

.field public shot_succ_tips_zh:Ljava/lang/String;

.field private tvClose:Landroid/widget/TextView;

.field private tvSave:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u56fe\u7247\u4fdd\u5b58\u5230%s\u76ee\u5f55\uff0c\u6587\u4ef6\u540d:%s\uff0c\u60a8\u53ef\u4ee5\u5728\u56fe\u5e93\u67e5\u770b"

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->shot_succ_tips_zh:Ljava/lang/String;

    const-string v0, "Picture saved to %s. File name: %s . You can view it in Gallery."

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->shot_succ_tips_en:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->jsHandler:Landroid/os/Handler;

    new-instance v0, Lcom/huawei/android/pushselfshow/richpush/f;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushselfshow/richpush/f;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Lcom/huawei/android/pushselfshow/a/a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Lcom/huawei/android/pushselfshow/richpush/b;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

    return-object v0
.end method

.method static synthetic f(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static reportRpFailed(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V
    .locals 2

    const-string v0, "PUSH_PS"

    const-string v1, "6"

    invoke-static {p0, v0, v1, p1}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    return-void
.end method


# virtual methods
.method public addBtnAfterLoadSucc()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "huaweipushclose.9.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/huawei/android/pushselfshow/b/i;->a([B)Lcom/huawei/android/pushselfshow/b/i;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v4, Lcom/huawei/android/pushselfshow/b/i;->a:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/android/pushselfshow/b/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    const v2, 0x3f333333

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    const v2, 0x3f333333

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41b0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v3, "\u5173\u95ed"

    const-string v4, "Close"

    invoke-static {v2, v3, v4}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41b0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v3, "\u4fdd\u5b58"

    const-string v4, "Save"

    invoke-static {v2, v3, v4}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/g;

    invoke-direct {v1, p0}, Lcom/huawei/android/pushselfshow/richpush/g;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/l;

    invoke-direct {v1, p0}, Lcom/huawei/android/pushselfshow/richpush/l;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public buildElement()V
    .locals 10

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->paramsFP:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->paramsFP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42c4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v7, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x4240

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v3, 0x40c0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x4120

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4closeButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6, v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v1, 0x42dc

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v7, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->lp4saveButton:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v6, v6, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvClose:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->tvSave:Landroid/widget/TextView;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const-string v0, ""

    invoke-virtual {p0, v6, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->setProgressBar(ZLjava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->setOverrideUrl(Z)V

    return-void
.end method

.method public buildProgressDialog()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u52aa\u529b\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019....."

    const-string v3, "Loading the message... Please wait."

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v2, "\u4e2d\u6b62"

    const-string v3, "Cancel"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/huawei/android/pushselfshow/richpush/j;

    invoke-direct {v2, p0}, Lcom/huawei/android/pushselfshow/richpush/j;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/i;

    invoke-direct {v1, p0}, Lcom/huawei/android/pushselfshow/richpush/i;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public createNoNetWorkDialog()V
    .locals 4

    const-string v0, "PushSelfShowLog"

    const-string v1, "Not network ,so show tips dialog"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v2, "\u8bf7\u6253\u5f00\u7f51\u7edc\u540e\uff0c\u70b9\u201c\u7ee7\u7eed\u201d"

    const-string v3, "Set up an Internet connection, and then touch Continue."

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v2, "\u7ee7\u7eed"

    const-string v3, "Continue"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/huawei/android/pushselfshow/richpush/e;

    invoke-direct {v2, p0}, Lcom/huawei/android/pushselfshow/richpush/e;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v2, "\u4e2d\u6b62"

    const-string v3, "Cancel"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/huawei/android/pushselfshow/richpush/d;

    invoke-direct {v2, p0}, Lcom/huawei/android/pushselfshow/richpush/d;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public downLoadFailed()V
    .locals 3

    const-string v0, "PushSelfShowLog"

    const-string v1, "downLoadFailed:"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v1, "\u5bcc\u5a92\u4f53\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    const-string v2, "Failed to load the message."

    invoke-static {v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V

    return-void
.end method

.method public downLoadSuccess(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0cand start loadLocalZip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->loadLocalZip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    const-string v2, "downLoadSuccess failed"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public downLoadTimeOut(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public enableJavaJS()V
    .locals 6

    :try_start_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "enable JavaJs support"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->jsHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushJavaScript:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushJavaScript:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    const-string v2, "huawei_push"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    const-string v2, "enable JavaJs support failed "

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadLocalZip(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/huawei/android/pushselfshow/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->enableJavaJS()V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "check index.html file failed"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v1, "\u5bcc\u5a92\u4f53\u5185\u5bb9\u4e0d\u6b63\u786e"

    const-string v2, "Invalid content."

    invoke-static {v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->buildElement()V

    if-eqz p1, :cond_2

    const-string v0, "pushmsg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pushmsg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushselfshow/a/a;

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    :goto_0
    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileurl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the pushmsg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->buildProgressDialog()V

    const-string v0, "PushSelfShowLog"

    const-string v1, "buildProgressDialog "

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/b;->cancel()Z

    :cond_0
    new-instance v0, Lcom/huawei/android/pushselfshow/richpush/b;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushselfshow/richpush/b;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mTimerTask:Lcom/huawei/android/pushselfshow/richpush/b;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    const-string v0, "application/zip"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->createNoNetWorkDialog()V

    :goto_1
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->paramsFP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_2
    return-void

    :cond_2
    const-string v0, "PushSelfShowLog"

    const-string v1, "pushmsg is null"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v1, "\u5bcc\u5a92\u4f53\u5185\u5bb9\u4e0d\u6b63\u786e"

    const-string v2, "Invalid content."

    invoke-static {v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreate(Intent intent) err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v0, Lcom/huawei/android/pushselfshow/b/d;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v3, v3, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    const-string v4, "application/zip"

    invoke-static {v4}, Lcom/huawei/android/pushselfshow/richpush/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/android/pushselfshow/b/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/b/d;->b()V

    goto :goto_1

    :cond_4
    const-string v0, "application/zip_local"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->loadLocalZip(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "text/html"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const-string v1, "\u5bcc\u5a92\u4f53\u5185\u5bb9\u4e0d\u6b63\u786e"

    const-string v2, "Invalid content."

    invoke-static {v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->stopMusic()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->indexFileUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to remove dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/b/c;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PushSelfShowLog"

    const-string v1, "remove unsuccess ,maybe removed before"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onKeyDown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->stopMusic()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method public setOverrideUrl(Z)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/k;

    invoke-direct {v1, p0, p1}, Lcom/huawei/android/pushselfshow/richpush/k;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setProgressBar(ZLjava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :goto_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/h;

    invoke-direct {v1, p0, p2}, Lcom/huawei/android/pushselfshow/richpush/h;-><init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public showErrorHtmlURI(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/huawei/android/pushselfshow/richpush/m;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/huawei/android/pushselfshow/richpush/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/m;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorHtmlURI,filePath is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->enableJavaJS()V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->pushmsg:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->reportRpFailed(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    const-string v2, "showErrorHtmlURI failed"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
