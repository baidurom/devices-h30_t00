.class final Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;
.super Ljava/lang/Thread;
.source "PhotoShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initPhotoShareFeature(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setComponentEnabledSetting(Landroid/content/Context;I)V

    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setComponentEnabledSetting(Landroid/content/Context;I)V

    .line 121
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->setContext(Landroid/content/Context;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initDirInfo(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    const-string v1, "com.android.gallery3d/2.2.1"

    invoke-static {v0, v2, v1, v2}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->setSwitcherRec(Landroid/content/Context;ZLjava/lang/String;Z)I

    .line 128
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getInstance()Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->initSdkBroadCastManager(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->registerPhotoshareReceiver(Landroid/content/Context;)V

    .line 130
    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->setLogOper(Z)V

    goto :goto_0
.end method
