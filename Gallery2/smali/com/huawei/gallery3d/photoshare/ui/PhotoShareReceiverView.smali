.class public Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;
.super Landroid/widget/TextView;
.source "PhotoShareReceiverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;

.field private mFriendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverViewGroup;)V
    .locals 0
    .parameter "context"
    .parameter "viewgroup"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->listener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;

    return-object v0
.end method


# virtual methods
.method public getFriendsInfo()Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->mFriendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    return-object v0
.end method

.method public setFriendsInfo(Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->mFriendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 30
    return-void
.end method

.method public setOnItemClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->listener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;

    .line 38
    new-instance v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
