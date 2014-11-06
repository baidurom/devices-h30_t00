.class Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;
.super Ljava/lang/Object;
.source "PhotoShareAddReceiverHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 135
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 13
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 72
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$002(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;[Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v4, receiverAccount:Ljava/lang/StringBuilder;
    const/4 v7, 0x2

    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getOrientation()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 76
    const-string v7, ""

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$200(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rsub-int/lit8 v7, v7, 0xa

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;
    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 82
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0d042d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;

    move-result-object v0

    .line 86
    .local v0, dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->setNeedNegativeButton(Z)V

    .line 87
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$300(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    .line 89
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mTotalReceiverAccount:[Ljava/lang/String;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_2
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 97
    .end local v0           #dialog:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment;
    .end local v1           #i:I
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    :cond_4
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto/16 :goto_0

    .line 102
    :cond_5
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->isReceiverCountReachMax()Z
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$400(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Landroid/widget/EditText;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_6
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->endWithSeparator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 108
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    invoke-virtual {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->addReceiver()V

    goto/16 :goto_0

    .line 112
    :cond_7
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    iget-object v8, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mSearchList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$500(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mCurrentReceiverList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$200(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Ljava/util/ArrayList;

    move-result-object v9

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->getRemainReceiverList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v7, v8, v9}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$600(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 116
    .local v5, remainReceiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v6, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 121
    .local v3, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 122
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    .end local v3           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    :cond_9
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->mReceiverAdapter:Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;
    invoke-static {v7}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->access$700(Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;)Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/huawei/gallery3d/photoshare/adapter/PhotoShareReceiverListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 126
    iget-object v7, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/gallery3d/photoshare/PhotoShareAddReceiverHandler;->setListVisible(Z)V

    goto/16 :goto_0
.end method
