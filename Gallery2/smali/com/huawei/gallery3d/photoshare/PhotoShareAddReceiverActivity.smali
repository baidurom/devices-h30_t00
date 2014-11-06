.class public Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;
.super Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.source "PhotoShareAddReceiverActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoShareAddReceiverActivity"


# instance fields
.field private mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

.field private mDisplayName:Ljava/lang/String;

.field private mListSize:I

.field private mReceiverEditor:Landroid/widget/EditText;

.field private mReceiverListSize:I

.field private mSharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->finish()V

    .line 178
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    .line 179
    return-void
.end method

.method protected initView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "sharePath"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mSharePath:Ljava/lang/String;

    .line 52
    const-string v7, "folderName"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mDisplayName:Ljava/lang/String;

    .line 54
    const v7, 0x7f10019f

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverEditor:Landroid/widget/EditText;

    .line 55
    const v7, 0x7f100193

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, receiverLayout:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mSharePath:Ljava/lang/String;

    invoke-static {v7, v8, v10}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v3

    .line 60
    .local v3, mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    new-instance v7, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-direct {v7, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    .line 61
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getReceiver()Ljava/util/ArrayList;

    move-result-object v6

    .line 63
    .local v6, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverListSize:I

    .line 64
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7, v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setReceiverList(Ljava/util/ArrayList;)V

    .line 65
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setRemainReceiverList()V

    .line 68
    .end local v6           #receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :cond_0
    const v7, 0x7f100190

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, addReceiveCancelButton:Landroid/widget/Button;
    const v7, 0x7f100192

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, addReceiverConfirmButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v7, 0x7f1001a3

    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    .local v4, mReceiverLimitPrompt:Landroid/widget/TextView;
    const v7, 0x7f0d042d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverListSize:I

    rsub-int/lit8 v9, v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7, v10}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setOrientation(I)V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->finish()V

    goto :goto_0

    .line 93
    :pswitch_2
    const/4 v6, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 94
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, receiverAccount:Ljava/lang/String;
    const-string v6, ";"

    const-string v7, ","

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 97
    .local v5, recv:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v6, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v5           #recv:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->clearFocus()V

    .line 100
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isReceiverAccountValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 102
    invoke-static {v9}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setReceiverAccountStatus(Z)V

    goto :goto_0

    .line 106
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #receiverAccount:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->toggleSoftInput()V

    .line 107
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver()V

    .line 109
    :cond_2
    iget v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mReceiverListSize:I

    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getReceiverList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getNeedCheckAccountInput()[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, input:[Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getAccountList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mListSize:I

    .line 115
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000d

    iget v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mListSize:I

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mListSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 116
    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/huawei/hicloud/photosharesdk/api/FriendsLogic;->isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    goto/16 :goto_0

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mSharePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getAccountList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mDisplayName:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    nop

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
    .line 82
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->doConfigurationChanged(I)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->setContentView(I)V

    .line 44
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 46
    return-void
.end method

.method protected onReceiveBroadcast(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const v12, 0x7f11000f

    const v11, 0x7f0d0426

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 130
    const-string v5, "actionID"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, cmdId:I
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_0

    .line 132
    const-string v5, "PhotoShareAddReceiverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceiveBroadcast, cmdId is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 173
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    const-string v5, "state"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, accountState:I
    if-ne v0, v8, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->dismissProgressDialog()V

    .line 140
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mListSize:I

    invoke-virtual {v5, v12, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :cond_2
    if-nez v0, :cond_1

    .line 143
    const-string v5, "hw_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    .local v2, isHwList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "not_hw_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    .local v3, notHwList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mSharePath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mDisplayName:Ljava/lang/String;

    invoke-static {v5, v6, v2, v7, v8}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->dismissProgressDialog()V

    .line 153
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mAddReceiverHandler:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v5, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->doAfterCheckAccount(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 160
    .end local v0           #accountState:I
    .end local v2           #isHwList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #notHwList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->dismissProgressDialog()V

    .line 161
    const-string v5, "state"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 162
    .local v4, state:I
    if-ne v4, v8, :cond_4

    .line 163
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->mListSize:I

    invoke-virtual {v5, v12, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {p0, v9}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;->finish()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0xfad
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
