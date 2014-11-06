.class public Lcom/android/gallery3d/filtershow/PanelController;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/PanelController$ViewType;,
        Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;,
        Lcom/android/gallery3d/filtershow/PanelController$Panel;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static COMPONENT:I = 0x0

.field private static HORIZONTAL_MOVE:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "PanelController"

.field private static PANEL:I

.field private static VERTICAL_MOVE:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mCurrentPanel:Landroid/view/View;

.field private mDisableFilterButtons:Z

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private final mPanels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$Panel;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPanel:Landroid/view/View;

.field private mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    .line 63
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    .line 64
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    .line 65
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    .line 381
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    .line 382
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 383
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 384
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 385
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 386
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 387
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    return-object v0
.end method

.method private showCropPopupMenu(Landroid/widget/Button;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 686
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 687
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120008

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 688
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/PanelController$2;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 695
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 696
    return-void
.end method

.method private showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/Button;)V
    .locals 4
    .parameter "curves"
    .parameter "anchor"

    .prologue
    .line 672
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 673
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120009

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 674
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 682
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 683
    return-void
.end method


# virtual methods
.method public addComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "aPanel"
    .parameter "component"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 414
    .local v0, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v2, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v3, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v2, p0, p2, v3}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addImageView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 424
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 425
    .local v0, imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V

    .line 426
    return-void
.end method

.method public addPanel(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "container"
    .parameter "warning"
    .parameter "position"

    .prologue
    .line 407
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/PanelController$Panel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 394
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method public enableWarningView(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "enable"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 400
    .local v0, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->enableWarningView(Z)V

    goto :goto_0
.end method

.method public ensureFilter(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    .line 570
    .local v3, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 571
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_0

    .line 574
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 575
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 577
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 579
    .end local v0           #copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 583
    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 585
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 587
    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 589
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 591
    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d023b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 593
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 595
    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 597
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 599
    :cond_5
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d023a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 601
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 603
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 605
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 607
    :cond_7
    if-nez v1, :cond_8

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 609
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 611
    :cond_8
    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 613
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 615
    :cond_9
    if-nez v1, :cond_a

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 617
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 619
    :cond_a
    if-nez v1, :cond_b

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 622
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 624
    :cond_b
    if-nez v1, :cond_c

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 626
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 628
    :cond_c
    if-nez v1, :cond_d

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0239

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 630
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 632
    :cond_d
    if-nez v1, :cond_e

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 634
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;-><init>()V

    .line 635
    .local v2, newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 638
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_e
    if-nez v1, :cond_f

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d01ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 640
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceColor;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceColor;-><init>()V

    .line 641
    .restart local v2       #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 644
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_f
    if-nez v1, :cond_10

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0200

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 646
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceReshape;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceReshape;-><init>()V

    .line 647
    .restart local v2       #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 650
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_10
    if-nez v1, :cond_11

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0202

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 652
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterNoseReshape;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterNoseReshape;-><init>()V

    .line 653
    .restart local v2       #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 656
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_11
    if-nez v1, :cond_12

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0203

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 658
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterTeethWhiten;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTeethWhiten;-><init>()V

    .line 659
    .restart local v2       #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 662
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_12
    if-nez v1, :cond_13

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0204

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 664
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;-><init>()V

    .line 665
    .restart local v2       #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 668
    .end local v2           #newFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_13
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 669
    return-void
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getTextFrom(Landroid/view/View;I)Ljava/lang/String;
    .locals 2
    .parameter "view"
    .parameter "itemId"

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 940
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 950
    const-string v1, ""

    :goto_0
    return-object v1

    .line 942
    :pswitch_0
    const v1, 0x7f0d01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 944
    :pswitch_1
    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 946
    :pswitch_2
    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 948
    :pswitch_3
    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x7f10025c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 447
    :cond_0
    const/4 v2, 0x1

    .line 459
    :cond_1
    :goto_0
    return v2

    .line 449
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 450
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 451
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 452
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 453
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 454
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 456
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    .line 457
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    .line 491
    .local v0, type:Lcom/android/gallery3d/filtershow/PanelController$ViewType;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    if-ne v1, v2, :cond_1

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    if-ne v1, v2, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->onNewValue(I)V

    .line 464
    return-void
.end method

.method public resetParameters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 436
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setParameterValue(I)V

    .line 443
    :cond_2
    return-void
.end method

.method public setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 391
    return-void
.end method

.method public setCurrentPanel(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .parameter "filter"
    .parameter "name"

    .prologue
    .line 560
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 561
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 562
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 565
    return-object p1
.end method

.method public setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "imageShow"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 486
    return-void
.end method

.method public setRowPanel(Landroid/view/View;)V
    .locals 0
    .parameter "rowPanel"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 476
    return-void
.end method

.method public setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "utilityPanel"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    .line 480
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 482
    return-void
.end method

.method public showComponent(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const v10, 0x7f100096

    const/4 v9, 0x0

    const v8, 0x7f100091

    const/4 v7, 0x1

    .line 699
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 700
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 701
    .local v2, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    const/4 v5, -0x1

    sget v6, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 702
    .local v0, anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 703
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    .line 704
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->select()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 706
    .local v1, anim2:Landroid/view/ViewPropertyAnimator;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setParameterValue(I)V

    .line 708
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 712
    .end local v0           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v1           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v2           #current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10009f

    if-ne v5, v6, :cond_2

    .line 713
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 714
    .local v3, curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    instance-of v5, p1, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 715
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/Button;)V

    .line 936
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    :cond_1
    :goto_0
    return-void

    .line 720
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f10009e

    if-ne v5, v6, :cond_3

    .line 721
    instance-of v5, p1, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 722
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Landroid/widget/Button;)V

    goto :goto_0

    .line 727
    .restart local p1
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_4

    .line 728
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->unselect()V

    .line 732
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_1

    .line 736
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 737
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideCurvesButtons()V

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 933
    :cond_5
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_1

    .line 934
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    goto :goto_0

    .line 740
    :pswitch_1
    const v5, 0x7f100099

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 741
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    .line 744
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-nez v5, :cond_5

    .line 745
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->disableFilterButtons()V

    .line 746
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    goto :goto_1

    .line 751
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f100092

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 752
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01ea

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 753
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto :goto_1

    .line 757
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_3
    const v5, 0x7f100093

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 758
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 759
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 760
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 761
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iget-boolean v5, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    if-eqz v5, :cond_6

    .line 762
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 763
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iput-boolean v9, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 765
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 769
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_4
    const v5, 0x7f100094

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 770
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 771
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 775
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_5
    const v5, 0x7f100095

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 776
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 777
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 778
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    goto/16 :goto_1

    .line 782
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 783
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 784
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 789
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 790
    .restart local v3       #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 791
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 792
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 793
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showCurvesButtons()V

    .line 794
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 795
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 800
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 802
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d023b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 808
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 809
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 815
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 816
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d023a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 817
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 823
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 824
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 830
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0239

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 831
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 832
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 833
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 838
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 839
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 844
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 845
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01de

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 846
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 851
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 852
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 853
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 858
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 859
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 860
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 865
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 866
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 867
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 872
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_12
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 876
    :pswitch_13
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-eqz v5, :cond_7

    .line 877
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto/16 :goto_1

    .line 879
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_8

    .line 880
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 882
    :cond_8
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    goto/16 :goto_1

    .line 887
    :pswitch_14
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 888
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 889
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 894
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 895
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d01ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 896
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 901
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 902
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0200

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 903
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 908
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 909
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0202

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 910
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 915
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 916
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0203

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 917
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 923
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0204

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 924
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 738
    :pswitch_data_0
    .packed-switch 0x7f10009e
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_6
        :pswitch_9
        :pswitch_e
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public showDefaultImageView()V
    .locals 2

    .prologue
    .line 512
    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 513
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 514
    return-void
.end method

.method public showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 4
    .parameter "id"

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, image:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 501
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 502
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 503
    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    goto :goto_0

    .line 505
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 508
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, -0x1

    .line 517
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 518
    const/4 v6, 0x0

    .line 519
    .local v6, removedUtilityPanel:Z
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 520
    .local v3, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 521
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 522
    .local v1, anim1:Landroid/view/ViewPropertyAnimator;
    const/4 v6, 0x1

    .line 523
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 524
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_0

    .line 525
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v3, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 526
    .local v2, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 527
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 531
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_1

    .line 553
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 536
    .local v5, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v6, :cond_4

    .line 537
    const/4 v4, -0x1

    .line 538
    .local v4, currentPos:I
    if-eqz v3, :cond_2

    .line 539
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v4

    .line 541
    :cond_2
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v5, v4, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 542
    .restart local v1       #anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 543
    if-eqz v3, :cond_3

    .line 544
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v7

    sget v8, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v3, v7, v8}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 545
    .restart local v2       #anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 551
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v4           #currentPos:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 552
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    goto :goto_0

    .line 548
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v5, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 549
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method public showParameter(Z)V
    .locals 1
    .parameter "s"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 468
    return-void
.end method
