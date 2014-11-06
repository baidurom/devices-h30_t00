.class Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;
.super Ljava/lang/Object;
.source "PhotoShareEditShareFolderActivity.java"

# interfaces
.implements Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->doAfterItemClicked(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

.field final synthetic val$account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    iput-object p2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->val$account:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveClick()V
    .locals 5

    .prologue
    .line 189
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    const v3, 0x7f0d0416

    invoke-virtual {v2, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$400(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$4;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mCurrentShareFolderName:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;->modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method
