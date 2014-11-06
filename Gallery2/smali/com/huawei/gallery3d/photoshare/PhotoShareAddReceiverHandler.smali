.class public Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;
.super Ljava/lang/Object;
.source "PhotoShareAddReceiverHandler.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddReceiverHandler"


# instance fields
.field private mActivity:Landroid/app/Activity;

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

.field private mLimitPrompt:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mListViewDivider:Landroid/widget/ImageView;

.field private mNewShareCreateButton:Landroid/widget/Button;

.field private mNewShareEditName:Landroid/widget/EditText;

.field private mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

.field private mReceiverEditor:Landroid/widget/EditText;

.field private mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

.field private mRecipientsEditorLayout:Landroid/view/View;

.field private mSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTotalReceiverAccount:[Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTextWatcher:Landroid/text/TextWatcher;

    .line 139
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    .line 140
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->initEditor()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->isReceiverCountReachMax()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    return-object v0
.end method

.method private addReceiverToViewGroup(Ljava/lang/String;)V
    .locals 4
    .parameter "receiver"

    .prologue
    .line 551
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 552
    .local v0, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 553
    new-instance v1, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-direct {v1, v2, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;-><init>(Landroid/content/Context;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;)V

    .line 554
    .local v1, view:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->addReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 555
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method

.method private checkInputValid(Ljava/lang/String;)Z
    .locals 7
    .parameter "receiver"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->endWithSeparator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->toastInvalidAccount(Ljava/lang/String;)V

    .line 215
    :goto_0
    return v3

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->getLogOnInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v1

    .line 196
    .local v1, accountinfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    const v4, 0x7f0d041d

    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    goto :goto_0

    .line 206
    .end local v0           #account:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v5, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->exist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0d041e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .end local v2           #message:Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 212
    goto :goto_0

    .line 214
    .end local v1           #accountinfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->toastInvalidAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;",
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
    .line 311
    .local p1, totalRecvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    .local p2, currentRecvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v3, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 314
    .local v4, searchInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 327
    .end local v4           #searchInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_1
    return-object v3

    .line 317
    .restart local v4       #searchInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 319
    .local v0, currentInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initEditor()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mRecipientsEditorLayout:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100196

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mNewShareEditName:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100192

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mNewShareCreateButton:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    .line 148
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10019f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 150
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v0, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mRecipientsEditorLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    .line 157
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    new-instance v0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    .line 160
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/FriendsLogic;->getReceiver(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    .line 161
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 165
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1001a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListViewDivider:Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1001a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mLimitPrompt:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 241
    :goto_0
    return v2

    .line 239
    :cond_0
    const-string v1, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"

    .line 240
    .local v1, numberPattern:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 241
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private isReceiverCountReachMax()Z
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverCount()I

    move-result v3

    if-lt v3, v7, :cond_0

    .line 246
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d042d

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v0

    .line 250
    .local v0, dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    invoke-virtual {v0, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setNeedNegativeButton(Z)V

    .line 251
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 254
    .end local v0           #dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isValidAllNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x0

    .line 231
    :goto_0
    return v2

    .line 229
    :cond_0
    const-string v1, "^[0-9]{0,128}$"

    .line 230
    .local v1, numberPattern:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 231
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private showInputForRecipientEditor()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 422
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 428
    :cond_1
    return-void
.end method

.method private translateReceiverListToEditTextFromTextView()V
    .locals 10

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v0, currentReceiverAccount:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getCurrentReceiverList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 533
    .local v3, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 535
    .end local v3           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_0
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, receiverEditor:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 538
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_1
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 542
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 543
    .local v7, totalReceiverCount:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v1, v7, :cond_2

    .line 544
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v8, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    .line 545
    .local v6, recvView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    invoke-virtual {v6}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->getFriendsInfo()Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    move-result-object v3

    .line 546
    .restart local v3       #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v8, v3, v6}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->deleteReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v3           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v6           #recvView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    :cond_2
    return-void
.end method


# virtual methods
.method protected addReceiver()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, receiver:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->endWithSeparator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 450
    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->toastInvalidAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_2
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-direct {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->checkInputValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-direct {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiverToViewGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addReceiver(Ljava/lang/String;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->checkInputValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setReceiverAccountStatus(Z)V

    .line 474
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiverToViewGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doAfterCheckAccount(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 502
    .local v4, size:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 503
    .local v3, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v5, v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->remove(Ljava/lang/String;)V

    .line 504
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 506
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0d0418

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000e

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v1

    .line 509
    .local v1, dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    invoke-virtual {v1, v10}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setNeedNegativeButton(Z)V

    .line 510
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public doConfigurationChanged(I)V
    .locals 7
    .parameter "configuration"

    .prologue
    .line 514
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setOrientation(I)V

    .line 515
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mNewShareEditName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 516
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mNewShareCreateButton:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mNewShareCreateButton:Landroid/widget/Button;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 519
    :cond_0
    const/4 v5, 0x2

    if-ne v5, p1, :cond_2

    .line 520
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->translateReceiverListToEditTextFromTextView()V

    .line 528
    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, totalReceiverAccount:Ljava/lang/String;
    const-string v5, ";"

    const-string v6, ","

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 524
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 525
    .local v3, recv:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver(Ljava/lang/String;)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected endWithSeparator(Ljava/lang/String;)Z
    .locals 1
    .parameter "receiver"

    .prologue
    .line 437
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getCurrentReceiverList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 289
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .end local v1           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_0
    return-object v2
.end method

.method public getNeedCheckAccountInput()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverCount()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 270
    :goto_0
    return-object v3

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverList()Ljava/util/ArrayList;

    move-result-object v2

    .line 261
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, accountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 263
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->isNeedCheck(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v4

    .line 268
    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0
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
    .line 295
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isNeedCheck(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 279
    .local v2, item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 283
    .end local v2           #item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 353
    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 355
    :cond_0
    const/4 v1, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 356
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, receiverAccount:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->hideSoftInput(Landroid/widget/EditText;)V

    .line 378
    .end local v0           #receiverAccount:Ljava/lang/String;
    :cond_2
    :goto_0
    return v3

    .line 361
    .restart local v0       #receiverAccount:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 367
    .end local v0           #receiverAccount:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverCount()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_5

    .line 368
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->hideSoftInput(Landroid/widget/EditText;)V

    goto :goto_0

    .line 371
    :cond_5
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 372
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->hideSoftInput(Landroid/widget/EditText;)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto :goto_0

    .line 376
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver()V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "isFocus"

    .prologue
    const/4 v2, 0x2

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    if-eqz p2, :cond_1

    .line 402
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mRecipientsEditorLayout:Landroid/view/View;

    const v1, 0x7f0202c1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mRecipientsEditorLayout:Landroid/view/View;

    const v1, 0x7f0202c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 408
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v0

    if-eq v2, v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver()V

    .line 411
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x7f10019f
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 170
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    invoke-virtual {v3, p3}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 171
    .local v0, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->exist(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0d041e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 183
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-direct {v2, v3, v4}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;-><init>(Landroid/content/Context;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;)V

    .line 178
    .local v2, receiverView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v3, v0, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->addReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 179
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    invoke-virtual {v3, p3}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->removeItem(I)V

    .line 180
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->showInputForRecipientEditor()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 395
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 384
    :pswitch_0
    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 386
    .local v0, cursorIndex:I
    if-nez v0, :cond_0

    .line 387
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->deleteLastReceiver()V

    .line 388
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 389
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    const v3, 0x7f0d0433

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x7f10019f
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_0
    :pswitch_0
    const/4 v1, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->translateReceiverListToEditTextFromTextView()V

    .line 349
    :cond_0
    return v3

    .line 335
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mRecipientsEditorLayout:Landroid/view/View;

    const v2, 0x7f0202c1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 336
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->showInputForRecipientEditor()V

    .line 337
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getCurrentReceiverList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 338
    .local v0, recvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x7f10019c
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setListVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 482
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 486
    const/4 p1, 0x0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->getReceiverCount()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListViewDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mLimitPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 495
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mListViewDivider:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mLimitPrompt:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 494
    goto :goto_1

    :cond_5
    move v0, v2

    .line 495
    goto :goto_2

    :cond_6
    move v2, v1

    .line 496
    goto :goto_3
.end method

.method public setReceiverList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverViewGroup:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    invoke-virtual {v0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->setReceiverList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 300
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;

    .line 301
    return-void
.end method

.method public setRemainReceiverList()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 305
    .local v0, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    invoke-virtual {v1, v0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 308
    :cond_0
    return-void
.end method

.method public toastInvalidAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "receiver"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d041f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    return-void
.end method

.method public toggleSoftInput()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleSoftInput(Landroid/widget/EditText;)V

    .line 434
    :cond_0
    return-void
.end method
