.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;
.super Ljava/lang/Object;
.source "PhotoShareReceiverViewGroup.java"

# interfaces
.implements Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->addReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

.field final synthetic val$friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

.field final synthetic val$recipientView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    iput-object p2, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->val$friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    iput-object p3, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->val$recipientView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->val$friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup$1;->val$recipientView:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;->deleteReceiver(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    .line 198
    return-void
.end method
