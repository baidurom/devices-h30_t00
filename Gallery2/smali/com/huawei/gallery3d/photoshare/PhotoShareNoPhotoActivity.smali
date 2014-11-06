.class public Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;
.super Landroid/app/Activity;
.source "PhotoShareNoPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$1;,
        Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
    }
.end annotation


# static fields
.field private static final REQUEST_CAMERA:I = 0xa

.field private static final REQUEST_MULTIPICK:I = 0xb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCameraPicture:Ljava/io/File;

.field private mFolderType:I

.field private mLoginViewDesc:Landroid/widget/TextView;

.field private mLoginViewNetworkDesc:Landroid/widget/TextView;

.field private mLoginViewPromptDesc:Landroid/widget/TextView;

.field private mLoginViewSwitchDesc:Landroid/widget/TextView;

.field private mLoginViewTitle:Landroid/widget/TextView;

.field private mMediaSetName:Ljava/lang/String;

.field private mMediaSetPath:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    .line 75
    :cond_0
    const/16 v0, 0xc

    .line 76
    .local v0, options:I
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 77
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d03f6

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    return-void
.end method

.method private initPhotoShareState()Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mFolderType:I

    packed-switch v0, :pswitch_data_0

    .line 205
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYRECV_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYPHOTO_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    goto :goto_0

    .line 202
    :pswitch_1
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYSHARE_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 82
    const v2, 0x7f1001c5

    invoke-virtual {p0, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    const v3, 0x7f1001cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewTitle:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    const v3, 0x7f1001cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewDesc:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    const v3, 0x7f1001cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewNetworkDesc:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    const v3, 0x7f1001ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewSwitchDesc:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mView:Landroid/view/View;

    const v3, 0x7f1001cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewPromptDesc:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "folderType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mFolderType:I

    .line 92
    const-string v2, "folderName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mMediaSetName:Ljava/lang/String;

    .line 93
    const-string v2, "folderPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mMediaSetPath:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mMediaSetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->initPhotoShareState()Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    move-result-object v1

    .line 98
    .local v1, photoShareState:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
    invoke-direct {p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->showLoginView(Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;)V

    .line 99
    return-void
.end method

.method private showLoginView(Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;)V
    .locals 3
    .parameter "type"

    .prologue
    const/16 v2, 0x8

    .line 167
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$1;->$SwitchMap$com$huawei$gallery3d$photoshare$PhotoShareNoPhotoActivity$PhotoShareState:[I

    invoke-virtual {p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0401

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewNetworkDesc:Landroid/widget/TextView;

    const v1, 0x7f0d0402

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewSwitchDesc:Landroid/widget/TextView;

    const v1, 0x7f0d0403

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewPromptDesc:Landroid/widget/TextView;

    const v1, 0x7f0d0404

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0405

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewDesc:Landroid/widget/TextView;

    const v1, 0x7f0d0406

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewNetworkDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewSwitchDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewPromptDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0407

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewNetworkDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewSwitchDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mLoginViewPromptDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add photo to MyShare : requestCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->finish()V

    .line 134
    return-void

    .line 110
    :pswitch_0
    if-ne p2, v5, :cond_1

    .line 111
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 112
    .local v1, orgPhotoPath:[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mCameraPicture:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mMediaSetPath:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1           #orgPhotoPath:[Ljava/lang/String;
    :pswitch_1
    if-ne p2, v5, :cond_1

    .line 120
    const-string v2, "photoshare-addpictures-arraylist"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 123
    .restart local v1       #orgPhotoPath:[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040064

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->setContentView(I)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 139
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 140
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 141
    iget v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mFolderType:I

    if-ne v1, v2, :cond_0

    .line 142
    const v1, 0x7f10022e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 163
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 152
    :sswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->finish()V

    goto :goto_0

    .line 156
    :sswitch_1
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createCameraFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mCameraPicture:Ljava/io/File;

    .line 157
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->mCameraPicture:Ljava/io/File;

    const/16 v1, 0xb

    const/16 v2, 0xa

    invoke-static {p0, v0, v1, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createChooseAddPictureDialog(Landroid/app/Activity;Ljava/io/File;II)V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10022e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->finish()V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleStatusBarByOrientation(Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->initActionBar()V

    .line 68
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;->initView()V

    .line 69
    return-void
.end method
