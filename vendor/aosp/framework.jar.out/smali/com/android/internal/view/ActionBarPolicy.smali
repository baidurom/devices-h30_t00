.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# static fields
.field private static final mHwOverflowMenu:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "ro.hw.overflowmenu"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/view/ActionBarPolicy;->mHwOverflowMenu:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 74
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v6, 0x10102ce

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 77
    .local v1, height:I
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    const v3, 0x1050053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 64
    .local v0, targetSdk:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 70
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/view/ActionBarPolicy;->mHwOverflowMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
