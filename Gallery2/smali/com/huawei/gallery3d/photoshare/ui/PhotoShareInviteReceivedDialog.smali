.class public Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;
.super Landroid/app/Activity;
.source "PhotoShareInviteReceivedDialog.java"


# static fields
.field private static final DIALOG_SHOW_INVITE:I = 0x1

.field public static final EXTRA_NOTIFY_MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String; = "InviteReceivedDialog"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mLoginAccount:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mSharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mSharePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "loginAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mLoginAccount:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    .line 36
    .local v0, myAccount:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mLoginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mMessage:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mAccountName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dir"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mSharePath:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shareName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mDisplayName:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->showDialog(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d043a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0441

    new-instance v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$3;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0442

    new-instance v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$2;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$2;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$1;

    invoke-direct {v1, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
