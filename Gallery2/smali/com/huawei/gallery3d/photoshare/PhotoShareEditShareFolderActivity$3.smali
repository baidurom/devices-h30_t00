.class Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;
.super Ljava/lang/Object;
.source "PhotoShareEditShareFolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->clickTheReceiverList(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

.field final synthetic val$info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    iput-object p2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;->val$info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$200()[I

    move-result-object v1

    aget v1, v1, p2

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$3;->val$info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->doAfterItemClicked(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;ILjava/lang/String;)V

    .line 175
    return-void
.end method
