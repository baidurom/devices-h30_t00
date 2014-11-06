.class public Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;
.super Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.source "PhotoShareEditReceiveFolderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoShareEditShareFolderActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCurrentReceiveFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

.field private mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

.field private mSharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createActionbar()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mActionBar:Landroid/app/ActionBar;

    .line 40
    :cond_0
    const/16 v0, 0xc

    .line 41
    .local v0, options:I
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 42
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d042c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 44
    return-void
.end method

.method protected initView()V
    .locals 7

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "sharePath"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mSharePath:Ljava/lang/String;

    .line 51
    const v4, 0x7f1001a5

    invoke-virtual {p0, v4}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 53
    .local v3, receiverList:Landroid/widget/ListView;
    new-instance v4, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-direct {v4, p0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    .line 54
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mSharePath:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mCurrentReceiveFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 58
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 59
    .local v0, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mCurrentReceiveFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mCurrentReceiveFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharedAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 62
    :cond_0
    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setState(I)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-virtual {v4, v2}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->setData(Ljava/util/ArrayList;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->setContentView(I)V

    .line 31
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditReceiveFolderActivity;->createActionbar()V

    .line 33
    return-void
.end method
