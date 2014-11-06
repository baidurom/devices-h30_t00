.class public Lcom/huawei/gallery3d/photoshare/observer/PhotoShareFileObserver;
.super Landroid/os/FileObserver;
.source "PhotoShareFileObserver.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "path"
    .parameter "mask"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "path"

    .prologue
    .line 17
    and-int/lit16 v0, p1, 0xfff

    .line 18
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 20
    :pswitch_0
    const-string v3, "shenzhenjing"

    const-string v4, "Delete"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.hicloud.photosharesdk.uirefresh"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, sendIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v3, "actionID"

    const/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const-string v3, "dir"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
    .end packed-switch
.end method
