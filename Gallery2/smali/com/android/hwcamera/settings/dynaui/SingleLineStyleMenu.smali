.class public Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;
.super Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;
.source "SingleLineStyleMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageTitle:Landroid/widget/ImageView;

.field private mTextContent:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V
    .locals 2
    .parameter "item"
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->initLayout()V

    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/settings/MenuItem;->setDynamicView(Lcom/android/hwcamera/settings/dynaui/DynamicUI;)V

    .line 29
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 32
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040037

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mView:Landroid/view/View;

    .line 34
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mView:Landroid/view/View;

    const v3, 0x7f10011b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    .line 35
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mView:Landroid/view/View;

    const v3, 0x7f10011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mTextContent:Landroid/widget/TextView;

    .line 36
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mView:Landroid/view/View;

    const v3, 0x7f10011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 37
    .local v1, mCheckBox:Landroid/widget/CheckBox;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mView:Landroid/view/View;

    return-object v0
.end method

.method public reflate(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void
.end method
