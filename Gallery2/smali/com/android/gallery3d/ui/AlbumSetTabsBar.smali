.class public Lcom/android/gallery3d/ui/AlbumSetTabsBar;
.super Landroid/widget/LinearLayout;
.source "AlbumSetTabsBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumSetTab"


# instance fields
.field private mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

.field private mSelectedAction:I

.field private mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

.field private mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/View;I)V
    .locals 7
    .parameter "activity"
    .parameter "rootView"
    .parameter "action"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v3, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    .line 62
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const v3, 0x7f0b00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setPadding(IIII)V

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setOrientation(I)V

    .line 67
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setGravity(I)V

    .line 68
    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setBackgroundColor(I)V

    .line 70
    invoke-direct {p0, p1, p3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->initializeTabs(Landroid/content/Context;I)Lcom/android/gallery3d/ui/SimpleTabWidget;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->initializeDivider(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .line 72
    .local v0, dividerLine:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->addView(Landroid/view/View;)V

    .line 74
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setVisibility(I)V

    .line 75
    iput p3, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I

    .line 77
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    const v3, 0x7f0b00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 81
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 82
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->onConfigurationChanged(Landroid/content/res/Resources;)V

    .line 87
    return-void

    .line 84
    .restart local p2
    :cond_0
    const-string v3, "AlbumSetTab"

    const-string v4, "error rootView"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/AlbumSetTabsBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I

    return p1
.end method

.method private initializeDivider(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, imageView:Landroid/widget/ImageView;
    const v2, 0x7f0200ae

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 162
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-object v0
.end method

.method private initializeTabs(Landroid/content/Context;I)Lcom/android/gallery3d/ui/SimpleTabWidget;
    .locals 11
    .parameter "context"
    .parameter "action"

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    new-instance v3, Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-direct {v3, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;-><init>(Landroid/content/Context;)V

    .line 130
    .local v3, tabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0d02ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    invoke-virtual {v3, v4, v7, v5}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v2

    .line 134
    .local v2, tab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    if-ne v5, p2, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 135
    const v4, 0x7f0d02ee

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v2

    .line 138
    if-ne v8, p2, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 139
    const v4, 0x7f0d02b7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    invoke-virtual {v3, v4, v7, v9}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v2

    .line 142
    if-ne v9, p2, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 143
    sget-boolean v4, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-eqz v4, :cond_1

    .line 144
    const v4, 0x7f0d02f0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    invoke-virtual {v3, v4, v7, v10}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v2

    .line 147
    if-ne v10, p2, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v3, v2, v6}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 149
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/SimpleTabWidget;->updateWidgetStyle(I)V

    .line 151
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-object v3

    .end local v0           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move v4, v6

    .line 134
    goto :goto_0

    :cond_3
    move v4, v6

    .line 138
    goto :goto_1

    :cond_4
    move v4, v6

    .line 142
    goto :goto_2
.end method


# virtual methods
.method public getClusterAction()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "AlbumSetTab"

    const-string v1, "disableTabMenu"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    .line 102
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setVisibility(I)V

    .line 103
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "resources"

    .prologue
    .line 110
    const-string v4, "AlbumSetTab"

    const-string v5, "onConfigurationChanged called"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 112
    .local v1, displayWidth:I
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    .local v0, displayHeight:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-le v0, v1, :cond_0

    .line 116
    const v4, 0x7f0b00be

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .local v3, mainlp:Landroid/widget/RelativeLayout$LayoutParams;
    const v4, 0x7f0b00b9

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void

    .line 119
    .end local v3           #mainlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    sub-int v4, v1, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    .line 97
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "AlbumSetTab"

    const-string v1, "enableTabMenu"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mTabWidget:Lcom/android/gallery3d/ui/SimpleTabWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->setVisibility(I)V

    .line 93
    return-void
.end method
