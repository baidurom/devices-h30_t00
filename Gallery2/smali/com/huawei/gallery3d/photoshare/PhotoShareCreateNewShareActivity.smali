.class public Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;
.super Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.source "PhotoShareCreateNewShareActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final EXTRA_NEED_ADD_PHOTO:Ljava/lang/String; = "needAddPhoto"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

.field private mNewShareCreateButton:Landroid/widget/Button;

.field private mNewShareEditName:Landroid/widget/EditText;

.field private mNewShareEditNameTextWatcher:Landroid/text/TextWatcher;

.field private mReceiverEditor:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditNameTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;

    return-object v0
.end method

.method private createShareFolder(Ljava/lang/String;)V
    .locals 7
    .parameter "shareName"

    .prologue
    .line 171
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 172
    .local v2, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-virtual {v2, p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDisplayName(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getReceiverList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setReceiver(Ljava/util/ArrayList;)V

    .line 174
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->getLogOnInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    .line 175
    .local v0, info:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedAccount(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->createAsynShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    move-result v1

    .line 177
    .local v1, restCode:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->dismissProgressDialog()V

    .line 179
    const v3, 0x7f0d0421

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0d0427

    invoke-virtual {p0, v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 181
    :cond_0
    return-void

    .line 175
    .end local v1           #restCode:I
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->finish()V

    .line 227
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    .line 228
    return-void
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    const v2, 0x7f100196

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    .line 85
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    const v2, 0x7f10019f

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mReceiverEditor:Landroid/widget/EditText;

    .line 90
    new-instance v2, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    .line 91
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v2, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    .line 93
    const v2, 0x7f100190

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 94
    .local v1, newShareCancelButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f100192

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;

    .line 97
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;

    const v3, 0x3e4ccccd

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 99
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v2, 0x7f1001a3

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, mReceiverLimitPrompt:Landroid/widget/TextView;
    const v2, 0x7f0d042d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v2, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setOrientation(I)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->finish()V

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v7, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 123
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, receiverAccount:Ljava/lang/String;
    const-string v7, ";"

    const-string v8, ","

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 126
    .local v5, recv:Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v5           #recv:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->clearFocus()V

    .line 129
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isReceiverAccountValid()Z

    move-result v7

    if-nez v7, :cond_3

    .line 130
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setReceiverAccountStatus(Z)V

    goto :goto_0

    .line 135
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #receiverAccount:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleSoftInput(Landroid/widget/EditText;)V

    .line 136
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver()V

    .line 138
    :cond_3
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, shareName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isShareNameValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const v7, 0x7f0d0410

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getNeedCheckAccountInput()[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, input:[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/huawei/hicloud/photosharesdk/api/FriendsLogic;->isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    goto/16 :goto_0

    .line 150
    .end local v2           #input:[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 148
    .restart local v2       #input:[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->createShareFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f100190
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->doConfigurationChanged(I)V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->setContentView(I)V

    .line 71
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 73
    return-void
.end method

.method protected onReceiveBroadcast(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const v9, 0x7f0d0426

    const v8, 0x7f0d0421

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    const-string v3, "actionID"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, cmdId:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 187
    sget-object v3, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveBroadcast, cmdId is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 192
    :sswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->dismissProgressDialog()V

    .line 193
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->finish()V

    goto :goto_0

    .line 197
    :sswitch_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->dismissProgressDialog()V

    .line 198
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v8, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :sswitch_2
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, state:I
    if-ne v2, v7, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->dismissProgressDialog()V

    .line 205
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v8, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :cond_2
    if-nez v2, :cond_1

    .line 207
    const-string v3, "not_hw_account"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    .local v1, notHwList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareEditName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->createShareFolder(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->dismissProgressDialog()V

    .line 214
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v3, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->doAfterCheckAccount(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa2 -> :sswitch_1
        0xfac -> :sswitch_0
        0xfaf -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "needAddPhoto"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    .local v1, isNeedAddPhoto:Z
    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setAddPhotoStatus(Z)V

    .line 81
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return v1

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x7f100196
        :pswitch_0
    .end packed-switch
.end method
