.class public Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoShareReceiverStateAdapter.java"


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
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mReceiverList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mReceiverList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f1001d2

    const v6, 0x7f1001d1

    .line 42
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 43
    .local v1, item:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    if-nez p2, :cond_0

    .line 44
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, state:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 72
    const v4, 0x7f0d042c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :goto_0
    return-object p2

    .line 60
    :pswitch_0
    const v4, 0x7f0d0429

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 63
    :pswitch_1
    const v4, 0x7f0d042a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 66
    :pswitch_2
    const v4, 0x7f0d0428

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 69
    :pswitch_3
    const v4, 0x7f0d042b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 25
    .local p1, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->mReceiverList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverStateAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method
