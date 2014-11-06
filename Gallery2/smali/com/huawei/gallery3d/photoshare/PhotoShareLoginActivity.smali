.class public Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;
.super Landroid/app/Activity;
.source "PhotoShareLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$2;,
        Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;
    }
.end annotation


# static fields
.field private static final ISHICLOUDLOGIN:Ljava/lang/String; = "isLogin"

.field private static final ISPHOTOSHARESWITCHOPEN:Ljava/lang/String; = "isOpen"

.field private static final PHOTOSHARE_LOGTO_HICLOUD:I = 0x6e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isNeedShareSwitchOpen:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mLoginViewBtn:Landroid/widget/Button;

.field private mLoginViewDesc:Landroid/widget/TextView;

.field private mLoginViewTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mActionBar:Landroid/app/ActionBar;

    .line 73
    :cond_0
    const/16 v0, 0xc

    .line 74
    .local v0, options:I
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 75
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0d03f6

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 77
    return-void
.end method

.method private initPhotoShareState(Landroid/content/Context;)Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->EMPTY_TYPE_NOT_LOGIN:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    .line 217
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->isNeedShareSwitchOpen:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->EMPTY_TYPE_SHARE_SWITCH_CLOSE:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoPhotoSwitchOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->EMPTY_TYPE_PHOTO_SWITCH_CLOSE:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    goto :goto_0

    .line 217
    :cond_2
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->EMPTY_TYPE_NOT_LOGIN:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    goto :goto_0
.end method

.method private showLoginView(Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;)V
    .locals 4
    .parameter "type"

    .prologue
    const v3, 0x7f0d03fd

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$2;->$SwitchMap$com$huawei$gallery3d$photoshare$PhotoShareLoginActivity$PhotoShareState:[I

    invoke-virtual {p1}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d03fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewDesc:Landroid/widget/TextView;

    const v1, 0x7f0d03ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    const v1, 0x7f0d0400

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d03f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewDesc:Landroid/widget/TextView;

    const v1, 0x7f0d03fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0d03fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewDesc:Landroid/widget/TextView;

    const v1, 0x7f0d03fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    .line 80
    const v1, 0x7f1001c5

    invoke-virtual {p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mView:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mView:Landroid/view/View;

    const v2, 0x7f1001c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewTitle:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mView:Landroid/view/View;

    const v2, 0x7f1001c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewDesc:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mView:Landroid/view/View;

    const v2, 0x7f1001c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mLoginViewBtn:Landroid/widget/Button;

    new-instance v2, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$1;-><init>(Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->initPhotoShareState(Landroid/content/Context;)Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    move-result-object v0

    .line 116
    .local v0, photoShareState:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;
    invoke-direct {p0, v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->showLoginView(Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;)V

    .line 117
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result from Hicloud : requestCode = "

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

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, isHiCloudLogin:Z
    const/4 v1, 0x0

    .line 128
    .local v1, isPhotoShareSwitchOpen:Z
    if-eqz p3, :cond_1

    .line 129
    const-string v2, "isLogin"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    const-string v2, "isOpen"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 133
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 162
    :cond_2
    :goto_0
    return-void

    .line 135
    :pswitch_0
    if-ne p2, v5, :cond_2

    .line 136
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initDirInfo(Landroid/content/Context;)V

    .line 141
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 142
    iget-boolean v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->isNeedShareSwitchOpen:Z

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v5}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setPhotoShareAlbumSet(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->finish()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f040063

    invoke-virtual {p0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "needShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->isNeedShareSwitchOpen:Z

    .line 56
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->finish()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->isNeedShareSwitchOpen:Z

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->finish()V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleStatusBarByOrientation(Landroid/app/Activity;)V

    .line 65
    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->initActionBar()V

    .line 66
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->initView()V

    .line 67
    return-void
.end method
