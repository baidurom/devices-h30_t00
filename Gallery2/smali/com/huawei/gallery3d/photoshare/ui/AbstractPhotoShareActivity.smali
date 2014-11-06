.class public abstract Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.super Landroid/app/Activity;
.source "AbstractPhotoShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    :cond_0
    return-void
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.hicloud.photosharesdk.uirefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method protected abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->finish()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x7f100190
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleStatusBarByOrientation(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->initView()V

    .line 33
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->registerReceiver()V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->unregisterReceiver()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->finish()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onReceiveBroadcast(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->toggleStatusBarByOrientation(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method protected registerReceiver()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    :cond_0
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 95
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 96
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 98
    return-void
.end method

.method protected unregisterReceiver()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    :cond_0
    return-void
.end method
