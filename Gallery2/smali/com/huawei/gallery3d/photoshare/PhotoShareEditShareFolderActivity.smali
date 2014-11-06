.class public Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;
.super Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.source "PhotoShareEditShareFolderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final MSG_REFRESH_FROM_BOARD:I = 0x71

.field private static final MSG_REFRESH_FROM_UI:I = 0x70

.field private static final PHOTOSHARE_ADD_RECEIVER:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "PhotoShareEditShareFolderActivity"

.field private static final mEditReceiverItemIds:[I


# instance fields
.field private mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

.field private mEditShareConfirmButton:Landroid/widget/Button;

.field private mEditShareEditNameTextWatcher:Landroid/text/TextWatcher;

.field private mEditShareFolderName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

.field private mSharePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d0413

    aput v2, v0, v1

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditReceiverItemIds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareEditNameTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->refresh(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditReceiverItemIds:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->doAfterItemClicked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    return-object v0
.end method

.method private clickTheReceiverList(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-virtual {v5, p3}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 164
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    sget-object v5, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditReceiverItemIds:[I

    array-length v3, v5

    .line 165
    .local v3, length:I
    new-array v2, v3, [Ljava/lang/String;

    .line 166
    .local v2, items:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 168
    .local v4, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 169
    sget-object v5, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditReceiverItemIds:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;

    invoke-direct {v6, p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 177
    return-void
.end method

.method private doAfterItemClicked(ILjava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "account"

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const v1, 0x7f0d0413

    invoke-virtual {p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0414

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v0

    .line 185
    .local v0, deleteReceiverDialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    new-instance v1, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;

    invoke-direct {v1, p0, p2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setOnDialogButtonClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7f0d0413
        :pswitch_0
    .end packed-switch
.end method

.method private refresh(I)V
    .locals 3
    .parameter "queryFrom"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mSharePath:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 139
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getReceiver()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-virtual {v1, v0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->setData(Ljava/util/ArrayList;)V

    .line 142
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->finish()V

    .line 149
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :cond_1
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setShareFolderNameEditable(Z)V
    .locals 1
    .parameter "isEditable"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 207
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->finish()V

    .line 323
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    .line 324
    return-void
.end method

.method protected initView()V
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 111
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "sharePath"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mSharePath:Ljava/lang/String;

    .line 113
    const v5, 0x7f1001b4

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 114
    .local v1, editShareCancelButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v5, 0x7f1001b6

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;

    .line 116
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v5, 0x7f1001ba

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    .line 119
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareEditNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    const v5, 0x7f1001c1

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .local v0, addReceiverButton:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v5, 0x7f1001c3

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 125
    .local v4, receiverList:Landroid/widget/ListView;
    const v5, 0x7f1001c4

    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, noReceiverText:Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 128
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 130
    new-instance v5, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-direct {v5, p0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    .line 131
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "PhotoShareEditShareFolderActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result from Hicloud : requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 329
    invoke-super {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onBackPressed()V

    .line 330
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->finish()V

    .line 331
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 216
    :sswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->finish()V

    goto :goto_0

    .line 219
    :sswitch_1
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareFolderName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, editShareFolderName:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->finish()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isShareNameValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->setShareFolderNameEditable(Z)V

    goto :goto_0

    .line 228
    :cond_2
    const v2, 0x7f0d0411

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDisplayName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->modifyShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    goto :goto_0

    .line 235
    .end local v0           #editShareFolderName:Ljava/lang/String;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 237
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v2, :cond_3

    .line 238
    const-string v2, "folderName"

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_3
    const-string v2, "sharePath"

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mSharePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->executeHWAnimation(Landroid/content/Context;I)V

    goto :goto_0

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x7f1001b4 -> :sswitch_0
        0x7f1001b6 -> :sswitch_1
        0x7f1001c1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->setContentView(I)V

    .line 87
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-super {p0, p1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 106
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 153
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->clickTheReceiverList(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 154
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->clickTheReceiverList(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveBroadcast(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/16 v11, 0x71

    const/16 v10, 0x70

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 271
    const-string v4, "actionID"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, cmdId:I
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 273
    const-string v4, "PhotoShareEditShareFolderActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveBroadcast, cmdId is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 279
    :sswitch_0
    const-string v4, "dir"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, sharePath:Ljava/lang/String;
    const-string v4, "operType"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 281
    .local v2, operateType:I
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mSharePath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 288
    .end local v2           #operateType:I
    .end local v3           #sharePath:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->dismissProgressDialog()V

    .line 289
    const v4, 0x7f0d041b

    invoke-static {v4, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    .line 290
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 294
    :sswitch_2
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->dismissProgressDialog()V

    .line 295
    const v4, 0x7f0d041c

    invoke-static {v4, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(ILandroid/content/Context;)V

    .line 296
    invoke-direct {p0, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->setShareFolderNameEditable(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->finish()V

    goto :goto_0

    .line 301
    :sswitch_3
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->dismissProgressDialog()V

    .line 302
    const-string v4, "state"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 303
    .local v1, friendState:I
    if-ne v1, v9, :cond_2

    .line 304
    const v4, 0x7f0d0419

    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0x7f0d0426

    invoke-virtual {p0, v6}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0, v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->setResult(I)V

    .line 307
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 312
    .end local v1           #friendState:I
    :sswitch_4
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_0
        0xfa3 -> :sswitch_1
        0xfad -> :sswitch_3
        0xfb0 -> :sswitch_2
        0xfb1 -> :sswitch_4
    .end sparse-switch
.end method
