.class Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$1;
.super Ljava/lang/Object;
.source "PhotoShareLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;

    .line 91
    .local v2, state:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "entrance_type"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    sget-object v3, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$2;->$SwitchMap$com$huawei$gallery3d$photoshare$PhotoShareLoginActivity$PhotoShareState:[I

    invoke-virtual {v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$PhotoShareState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 99
    :pswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;

    const-string v4, "com.huawei.android.intent.action.photoshare.SWITCH"

    const/16 v5, 0x6e

    invoke-static {v3, v4, v0, v5}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->jumpToPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unable to start HiCloud CloudPhoto Setting Activity!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f1001c9
        :pswitch_0
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
