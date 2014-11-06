.class public Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;
.super Landroid/view/ViewGroup;
.source "PhotoShareReceiverViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;,
        Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoShareReceiverViewGroup"


# instance fields
.field private mCurrentReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacing:I

.field protected mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setSpacing(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeset"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    .line 70
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setSpacing(Landroid/content/Context;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attributeset"
    .parameter "i"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setSpacing(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method private setSpacing(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mVerticalSpacing:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mHorizontalSpacing:I

    .line 83
    return-void
.end method


# virtual methods
.method public addReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V
    .locals 5
    .parameter "friendsInfo"
    .parameter "recipientView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 182
    invoke-virtual {p2, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setFriendsInfo(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)V

    .line 183
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/high16 v1, 0x4180

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setTextSize(F)V

    .line 185
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020301

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setGravity(I)V

    .line 187
    invoke-virtual {p2, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setFocusable(Z)V

    .line 188
    invoke-virtual {p2, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setSingleLine(Z)V

    .line 192
    const v1, 0x7f0202bc

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setBackgroundResource(I)V

    .line 193
    new-instance v1, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    invoke-virtual {p2, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setOnItemClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v0

    .line 202
    .local v0, index:I
    add-int/lit8 v1, v0, -0x1

    new-instance v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addReceiverInfo(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public deleteLastReceiver()V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v0

    .line 217
    .local v0, childCount:I
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 218
    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    .line 219
    .local v2, view:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    invoke-virtual {v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->getFriendsInfo()Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    move-result-object v1

    .line 220
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->deleteReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 222
    .end local v1           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v2           #view:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    :cond_0
    return-void
.end method

.method public deleteReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V
    .locals 1
    .parameter "friendsInfo"
    .parameter "view"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p0, p2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method public exist(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v3

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 254
    .local v2, item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public exist(Ljava/lang/String;)Z
    .locals 4
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v2

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 266
    .local v1, item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;
    .locals 2
    .parameter "attributeset"

    .prologue
    .line 86
    new-instance v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCurrentReceiverList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mCurrentReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceiverCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getReceiverList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "flag"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, childIndex:I
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingTop()I

    move-result v6

    add-int v3, p3, v6

    .line 92
    .local v3, height:I
    const/4 v1, 0x0

    .local v1, cnt1:I
    :goto_0
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingLeft()I

    move-result v6

    add-int v5, p2, v6

    .line 94
    .local v5, width:I
    const/4 v2, 0x0

    .local v2, cnt2:I
    :goto_1
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;

    iget v6, v6, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    if-ge v2, v6, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    iget v7, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mHorizontalSpacing:I

    add-int v5, v6, v7

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;

    iget v6, v6, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->height:I

    iget v7, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mVerticalSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v2           #cnt2:I
    .end local v5           #width:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 108
    .local v18, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 110
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 111
    .local v8, HeightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 113
    .local v10, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v9

    .line 114
    .local v9, childCnt:I
    const/4 v7, 0x0

    .line 115
    .local v7, height:I
    const/4 v11, 0x0

    .line 116
    .local v11, i2:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;

    invoke-direct {v14}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;-><init>()V

    .line 118
    .local v14, rowinfo:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;
    const/4 v12, 0x0

    .line 124
    .local v12, index:I
    :goto_0
    if-ge v12, v9, :cond_6

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 130
    .local v15, viewHeight:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    .line 132
    .local v16, viewWidth:I
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    add-int v17, v16, v2

    .line 133
    .local v17, width:I
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    if-lez v2, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mHorizontalSpacing:I

    add-int v17, v17, v2

    .line 136
    :cond_0
    if-eqz v18, :cond_1

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 159
    :cond_1
    :goto_1
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    if-lez v2, :cond_2

    .line 160
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mHorizontalSpacing:I

    add-int v13, v2, v4

    .line 161
    .local v13, rowWidth:I
    iput v13, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    .line 163
    .end local v13           #rowWidth:I
    :cond_2
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    add-int v2, v2, v16

    iput v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    .line 164
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    .line 165
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->width:I

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 166
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->height:I

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->height:I

    .line 167
    add-int/lit8 v12, v12, 0x1

    .line 168
    goto :goto_0

    .line 138
    :cond_3
    if-eqz v8, :cond_4

    if-ge v7, v10, :cond_6

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mVerticalSpacing:I

    add-int/2addr v7, v2

    .line 155
    :cond_5
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->height:I

    add-int/2addr v7, v2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;

    .end local v14           #rowinfo:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;
    invoke-direct {v14}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;-><init>()V

    .restart local v14       #rowinfo:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;
    goto :goto_1

    .line 141
    .end local v3           #view:Landroid/view/View;
    .end local v15           #viewHeight:I
    .end local v16           #viewWidth:I
    .end local v17           #width:I
    :cond_6
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->childCount:I

    if-lez v2, :cond_8

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mVerticalSpacing:I

    add-int/2addr v7, v2

    .line 144
    :cond_7
    iget v2, v14, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$RowInfo;->height:I

    add-int/2addr v7, v2

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->resolveSize(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, view:Landroid/view/View;
    move-object v5, v4

    .line 276
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, receiverAccount:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v4, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 281
    check-cast v3, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    .line 282
    .local v3, recvView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->getFriendsInfo()Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    move-result-object v1

    .line 283
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {p0, v1, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->deleteReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 287
    .end local v1           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v2           #receiverAccount:Ljava/lang/String;
    .end local v3           #recvView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 274
    .restart local v2       #receiverAccount:Ljava/lang/String;
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 172
    iput p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mHorizontalSpacing:I

    .line 173
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->requestLayout()V

    .line 174
    return-void
.end method

.method public setReceiverList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mTotalReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 177
    iput p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->mVerticalSpacing:I

    .line 178
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->requestLayout()V

    .line 179
    return-void
.end method
