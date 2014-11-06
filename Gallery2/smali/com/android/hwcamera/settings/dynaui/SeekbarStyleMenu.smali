.class public Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;
.super Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;
.source "SeekbarStyleMenu.java"


# static fields
.field private static final PROGRESS_SCALE:I = 0x64


# instance fields
.field private mCurrentValue:I

.field private mMaxProgress:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarBeginValue:Landroid/widget/TextView;

.field private mSeekBarEndValue:Landroid/widget/TextView;

.field private mSeekBarImageView:Landroid/widget/ImageView;

.field private mSeekBarMiddleValue:Landroid/widget/TextView;

.field private mSeekBarTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "context"
    .parameter "item"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I

    .line 32
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, menuitems:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->initLayout(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->initListener(Ljava/util/List;)V

    .line 35
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->initSeekbarValue(Lcom/android/hwcamera/settings/MenuItem;Ljava/util/List;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setDynamicView(Lcom/android/hwcamera/settings/dynaui/DynamicUI;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f100116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarTitle:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f100115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarImageView:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f100117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    .line 63
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f100118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarBeginValue:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f100119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarMiddleValue:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f10011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarEndValue:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method private initListener(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    move-object v0, p1

    .line 70
    .local v0, menuitems:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    new-instance v1, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;-><init>(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 94
    return-void
.end method

.method private initSeekbarValue(Lcom/android/hwcamera/settings/MenuItem;Ljava/util/List;)V
    .locals 2
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/settings/MenuItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, menuitems:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mMaxProgress:I

    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mMaxProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarBeginValue:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarMiddleValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBarEndValue:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mView:Landroid/view/View;

    return-object v0
.end method

.method public reflate(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    return-void
.end method
