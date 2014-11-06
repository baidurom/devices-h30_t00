.class public Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoShareReceiverListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f10018e

    .line 48
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 49
    .local v1, item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    if-nez p2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->mReceiverList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
