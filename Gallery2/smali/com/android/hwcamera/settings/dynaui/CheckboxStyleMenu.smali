.class public Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;
.super Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;
.source "CheckboxStyleMenu.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

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
    .line 24
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->initLayout()V

    .line 27
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const-string v0, "on"

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->setCheckBoxState(Z)V

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/settings/MenuItem;->setDynamicView(Lcom/android/hwcamera/settings/dynaui/DynamicUI;)V

    .line 31
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mView:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f10011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    .line 37
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f10011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mTextContent:Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mView:Landroid/view/View;

    const v2, 0x7f10011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mCheckBox:Landroid/widget/CheckBox;

    .line 39
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mView:Landroid/view/View;

    return-object v0
.end method

.method public reflate(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 54
    const-string v0, "on"

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->setCheckBoxState(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    return-void
.end method

.method public setCheckBoxState(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    return-void
.end method
