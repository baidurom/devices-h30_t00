.class Landroid/webkit/TextSelectWindow;
.super Landroid/app/Dialog;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;,
        Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;
    }
.end annotation


# static fields
.field private static final ALERT_DIALOG_THEME:Ljava/lang/String; = "androidhwext:style/Theme.Emui.Dialog.Alert"

.field private static final DIALOG_LEFT_WIDTH:I = 0x14

.field private static final DIALOG_NUM:Ljava/lang/String; = "dialogNum"

.field private static final DIALOG_RIGHT_WIDTH:I = 0x3c

.field private static final DICT_AUTHORITY:Ljava/lang/String; = "com.youdao.provider.dict"

.field private static final DICT_PACKAGE:Ljava/lang/String; = "com.youdao.dict"

.field private static final MIN_POSITION_VALUE:I = 0x0

.field private static final POPUP_TEXT_LAYOUT_HW:I = 0x307001f

.field private static final POPWINDOW_HEIGHT:I = 0x33

.field private static final START_DIALOG_NUM:Ljava/lang/String; = "1"

.field private static wiki:Z


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCopyTextView:Landroid/webkit/SelectChangeTextView;

.field private mCutTextView:Landroid/webkit/SelectChangeTextView;

.field private mLessTextView:Landroid/webkit/SelectChangeTextView;

.field private mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

.field private mMoreTextView:Landroid/webkit/SelectChangeTextView;

.field private mOldconfig:Landroid/content/res/Configuration;

.field private mPasteTextView:Landroid/webkit/SelectChangeTextView;

.field private mPointDown:Landroid/widget/ImageView;

.field private mPointUp:Landroid/widget/ImageView;

.field private mPopWinLin:Landroid/widget/LinearLayout;

.field private mSearchTextView:Landroid/webkit/SelectChangeTextView;

.field private mShareTextView:Landroid/webkit/SelectChangeTextView;

.field private mSplitText1:Landroid/widget/TextView;

.field private mSplitText2:Landroid/widget/TextView;

.field private mSplitText3:Landroid/widget/TextView;

.field private mSplitText4:Landroid/widget/TextView;

.field private mSplitText41:Landroid/widget/TextView;

.field private mSplitText411:Landroid/widget/TextView;

.field private mSplitText5:Landroid/widget/TextView;

.field private mSplitText6:Landroid/widget/TextView;

.field private mTransTextView:Landroid/webkit/SelectChangeTextView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWikiTextView:Landroid/webkit/SelectChangeTextView;

.field private webViewClassic:Landroid/webkit/WebViewClassic;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/TextSelectWindow;->wiki:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;Z)V
    .locals 1
    .parameter "context"
    .parameter "w"
    .parameter "cut"

    .prologue
    .line 105
    const v0, 0x3060032

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/webkit/TextSelectWindow;->mOldconfig:Landroid/content/res/Configuration;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 106
    iput-object p1, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    .line 108
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    .line 109
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    .line 110
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 111
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->initContentView()V

    .line 112
    invoke-direct {p0, p3}, Landroid/webkit/TextSelectWindow;->InitItemLabel(Z)V

    .line 113
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->createPopupDialog()V

    .line 114
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->setListener()V

    .line 115
    return-void
.end method

.method private InitItemLabel(Z)V
    .locals 3
    .parameter "cut"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private UpdateItemLabel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 373
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1}, Landroid/webkit/SelectChangeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/SelectChangeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 394
    return-void
.end method

.method private UpdateLessItemLabel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 400
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1}, Landroid/webkit/SelectChangeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/SelectChangeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v1, v2}, Landroid/webkit/SelectChangeTextView;->setVisibility(I)V

    .line 421
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/TextSelectWindow;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Landroid/webkit/TextSelectWindow;->wiki:Z

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/TextSelectWindow;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mOldconfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method private createPopupDialog()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/webkit/TextSelectWindow;->setContentView(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 245
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 249
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 250
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 251
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 252
    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 254
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 255
    new-instance v1, Landroid/webkit/TextSelectWindow$1;

    invoke-direct {v1, p0}, Landroid/webkit/TextSelectWindow$1;-><init>(Landroid/webkit/TextSelectWindow;)V

    invoke-virtual {p0, v1}, Landroid/webkit/TextSelectWindow;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 270
    return-void
.end method

.method private dictSelection(Ljava/lang/String;)V
    .locals 14
    .parameter "selectStr"

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 427
    const-string v0, "\n"

    invoke-direct {p0, p1, v0}, Landroid/webkit/TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, content:Ljava/lang/String;
    const-string v9, ""

    .line 429
    .local v9, result:Ljava/lang/String;
    const-string v0, "com.youdao.dict"

    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow;->isApkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const-string v0, "content://com.youdao.provider.dict/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 432
    .local v1, DICT_CONTENT_URI:Landroid/net/Uri;
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 438
    :cond_0
    invoke-direct {p0, p1, v9}, Landroid/webkit/TextSelectWindow;->showContentResultView(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz v6, :cond_1

    .line 443
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    .end local v1           #DICT_CONTENT_URI:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "androidhwext:style/Theme.Emui.Dialog.Alert"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 452
    .local v10, themeID:I
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 453
    .local v12, webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 454
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    const v0, 0x302007e

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const v0, 0x3020089

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 458
    const v0, 0x104000a

    new-instance v2, Landroid/webkit/TextSelectWindow$3;

    invoke-direct {v2, p0}, Landroid/webkit/TextSelectWindow$3;-><init>(Landroid/webkit/TextSelectWindow;)V

    invoke-virtual {v12, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 470
    :cond_3
    const-string v0, "\n"

    invoke-direct {p0, p1, v0}, Landroid/webkit/TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    const/4 v11, 0x0

    .line 473
    .local v11, url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.co.jp/m/translate?hl=ja&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 525
    :goto_1
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    .local v8, i:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 528
    .end local v8           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 479
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.com.hk/m/translate?hl=zh&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 484
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.es/m/translate?hl=es&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 489
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.pt/m/translate?hl=pt&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 494
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.de/m/translate?hl=de&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 499
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.fr/m/translate?hl=fr&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 504
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.pl/m/translate?hl=pl&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 509
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.it/m/translate?hl=it&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 514
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.ru/m/translate?hl=ru&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 521
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://translate.google.com/m/translate?hl=en&ie=UTF8&prev=_t&sl=auto&q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 445
    .end local v10           #themeID:I
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;
    .restart local v1       #DICT_CONTENT_URI:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 600
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 601
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 604
    :cond_0
    return-void
.end method

.method private initContentView()V
    .locals 8

    .prologue
    const v7, 0x30d0023

    const/16 v6, 0x8

    const/4 v5, -0x2

    const v4, 0x303011d

    .line 121
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x3070019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x30d0018

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    .line 125
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0019

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    .line 127
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    .line 133
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    .line 139
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d001f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    .line 145
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0020

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    .line 149
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0024

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    .line 153
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0021

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText4:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 156
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0025

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText41:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 159
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0022

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    .line 161
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    .line 163
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 164
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText411:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0026

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    .line 169
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0027

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText5:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0028

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    .line 175
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d0029

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    .line 177
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSplitText6:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 179
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x30d002a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/SelectChangeTextView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    .line 181
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    invoke-virtual {v2, p0}, Landroid/webkit/SelectChangeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x30d0017

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    .line 183
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x30d002b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    .line 185
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 189
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 190
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 191
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 192
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 193
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 194
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 195
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 196
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectChangeTextView;->setBackView(Landroid/view/View;)V

    .line 199
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method private isApkExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 559
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 563
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    const/4 v1, 0x1

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isInWebViewRegion(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 646
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 647
    .local v3, location:[I
    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 648
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 649
    .local v4, r:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 651
    aget v6, v3, v5

    iget-object v7, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v0, v6, v7

    .line 652
    .local v0, dif:I
    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 654
    .local v1, eventX:I
    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 656
    .local v2, eventY:I
    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTop()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getLeft()I

    move-result v6

    if-ge v6, v1, :cond_0

    iget-object v6, p0, Landroid/webkit/TextSelectWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getRight()I

    move-result v6

    if-ge v1, v6, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 798
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 800
    .local v0, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 801
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    const/4 v2, 0x1

    .line 804
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "spec"

    .prologue
    .line 628
    const-string v2, "\\s*|\t|\r|\n"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 629
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 630
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 631
    return-object p1
.end method

.method private setListener()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 274
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 275
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/webkit/TextSelectWindow$2;

    invoke-direct {v1, p0}, Landroid/webkit/TextSelectWindow$2;-><init>(Landroid/webkit/TextSelectWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 289
    return-void
.end method

.method private showContentResultView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "srcStr"
    .parameter "destStr"

    .prologue
    .line 537
    new-instance v0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private showWebResultView(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 549
    new-instance v0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;-><init>(Landroid/webkit/TextSelectWindow;Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private updatePosition(ZII)V
    .locals 2
    .parameter "shouldDrawRotImg"
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    .line 587
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 588
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 589
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 590
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 591
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 595
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->hideSoftKeyboard()V

    .line 596
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->show()V

    .line 597
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 623
    const/high16 v0, 0x424c

    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->dismiss()V

    .line 610
    :cond_0
    return-void
.end method

.method public measureContent()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 575
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 580
    return-void
.end method

.method public measurePopHeight()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public measurePopWidth()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 339
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, mSelectionString:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCopyTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_1

    .line 341
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 366
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 367
    :goto_1
    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mCutTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_2

    .line 343
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->cutSelection()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mPasteTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_3

    .line 345
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_4

    .line 347
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->UpdateItemLabel()V

    goto :goto_1

    .line 349
    :cond_4
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mLessTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_5

    .line 350
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow;->UpdateLessItemLabel()V

    goto :goto_1

    .line 352
    :cond_5
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mShareTextView:Landroid/webkit/SelectChangeTextView;

    if-eq p1, v2, :cond_6

    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mMoreShareTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_7

    .line 353
    :cond_6
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_7
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mTransTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_8

    .line 356
    invoke-direct {p0, v1}, Landroid/webkit/TextSelectWindow;->dictSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_8
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mWikiTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_9

    .line 358
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/TextSelectWindow;->wiki:Z

    .line 359
    const-string v2, "\n"

    invoke-direct {p0, v1, v2}, Landroid/webkit/TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow;->showWebResultView(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v0           #content:Ljava/lang/String;
    :cond_9
    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->mSearchTextView:Landroid/webkit/SelectChangeTextView;

    if-ne p1, v2, :cond_0

    .line 362
    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/TextSelectWindow;->wiki:Z

    .line 363
    const-string v2, "\n"

    invoke-direct {p0, v1, v2}, Landroid/webkit/TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0       #content:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow;->showWebResultView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 637
    invoke-direct {p0, p1}, Landroid/webkit/TextSelectWindow;->isInWebViewRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 639
    const/4 v0, 0x1

    .line 642
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public show(ZIII)V
    .locals 5
    .parameter "shouldDrawRotImg"
    .parameter "left"
    .parameter "top"
    .parameter "point"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 295
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 296
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 297
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 298
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 300
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 301
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x14

    if-le p4, v1, :cond_2

    .line 302
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    .line 312
    :cond_0
    :goto_0
    const/16 v1, 0x14

    if-gt p4, v1, :cond_1

    .line 313
    const/16 p4, 0x14

    .line 315
    :cond_1
    const/4 v0, 0x0

    .line 316
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    if-eqz p1, :cond_4

    .line 318
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x3030111

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 319
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    .line 322
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 324
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 335
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/TextSelectWindow;->updatePosition(ZII)V

    .line 336
    return-void

    .line 304
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    goto :goto_0

    .line 307
    :cond_3
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    .line 308
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x14

    if-le p4, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/webkit/TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    goto :goto_0

    .line 327
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x3030113

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 328
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 332
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v1, p0, Landroid/webkit/TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1
.end method
