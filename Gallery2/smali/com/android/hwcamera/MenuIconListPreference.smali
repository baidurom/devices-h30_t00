.class public Lcom/android/hwcamera/MenuIconListPreference;
.super Lcom/android/hwcamera/IconListPreference;
.source "MenuIconListPreference.java"


# instance fields
.field private mChildViewType:I

.field private mContentDescription:Ljava/lang/String;

.field private mPrefs:[Ljava/lang/CharSequence;

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v1, Lcom/android/hwcamera/R$styleable;->MenuIconListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/MenuIconListPreference;->mChildViewType:I

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/MenuIconListPreference;->mViewType:I

    .line 23
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/MenuIconListPreference;->mPrefs:[Ljava/lang/CharSequence;

    .line 24
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/MenuIconListPreference;->mContentDescription:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method


# virtual methods
.method public clearPrefs()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/MenuIconListPreference;->mPrefs:[Ljava/lang/CharSequence;

    .line 50
    return-void
.end method

.method public getChildViewType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/hwcamera/MenuIconListPreference;->mChildViewType:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/MenuIconListPreference;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefs()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/MenuIconListPreference;->mPrefs:[Ljava/lang/CharSequence;

    .line 38
    .local v0, temp:[Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/hwcamera/MenuIconListPreference;->mViewType:I

    return v0
.end method
