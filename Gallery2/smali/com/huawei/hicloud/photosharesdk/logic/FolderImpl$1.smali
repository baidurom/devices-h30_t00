.class Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;
.super Landroid/os/Handler;
.source "FolderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .local v3, obj:Ljava/lang/Object;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 288
    .end local v3           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 93
    .restart local v3       #obj:Ljava/lang/Object;
    :sswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_2

    .line 94
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 95
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    check-cast v3, Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-static {v9, v3, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    :cond_1
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 99
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u5206\u4eab\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 103
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 104
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    check-cast v3, Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterDelShareFolderSuc(Ljava/lang/String;)V
    invoke-static {v9, v3}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$1(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/lang/String;)V

    .line 106
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 107
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u5206\u4eab\u6587\u4ef6\u5939\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_3
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 112
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u5206\u4eab\u6587\u4ef6\u5939\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :sswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_4

    .line 122
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendCreateShareFail(Landroid/content/Context;)V

    .line 123
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 124
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u521b\u5efa\u5206\u4eab\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 127
    instance-of v9, v3, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v9, :cond_5

    move-object v7, v3

    .line 128
    check-cast v7, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 129
    .local v7, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterCreateShareFolderSuccess(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V
    invoke-static {v9, v7, v12}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$2(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V

    .line 130
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 131
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u521b\u5efa\u5206\u4eab\u6587\u4ef6\u5939\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v7           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_5
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendCreateShareFail(Landroid/content/Context;)V

    .line 135
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 136
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u521b\u5efa\u5206\u4eab\u6587\u4ef6\u5939\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :sswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_6

    .line 146
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFolerFail(Landroid/content/Context;)V

    .line 147
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 148
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u540d\u79f0\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 151
    instance-of v9, v3, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    if-eqz v9, :cond_7

    move-object v7, v3

    .line 152
    check-cast v7, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 153
    .restart local v7       #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterModifyShareFolderName(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    invoke-static {v9, v7}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$3(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 154
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 155
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u540d\u79f0\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v7           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_7
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFolerFail(Landroid/content/Context;)V

    .line 159
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 160
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u540d\u79f0\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :sswitch_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_8

    .line 170
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFriendNotify(Landroid/content/Context;I)V

    .line 171
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 172
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u63a5\u6536\u4eba\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 175
    instance-of v9, v3, Ljava/util/TreeMap;

    if-eqz v9, :cond_9

    .line 176
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    check-cast v3, Ljava/util/TreeMap;

    .end local v3           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterModifyShareFolderRec(Ljava/util/TreeMap;)V
    invoke-static {v9, v3}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$4(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/TreeMap;)V

    .line 177
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 178
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u63a5\u6536\u4eba\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_9
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFriendNotify(Landroid/content/Context;I)V

    .line 182
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 183
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4fee\u6539\u5206\u4eab\u6587\u4ef6\u5939\u63a5\u6536\u4eba\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :sswitch_5
    const/4 v8, 0x0

    .line 202
    .local v8, sharePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 203
    .local v2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    instance-of v9, v3, Ljava/util/TreeMap;

    if-eqz v9, :cond_a

    move-object v2, v3

    .line 204
    check-cast v2, Ljava/util/TreeMap;

    .line 205
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 206
    const-string v9, "sharepath"

    invoke-virtual {v2, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sharePath:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 210
    .restart local v8       #sharePath:Ljava/lang/String;
    :cond_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_b

    .line 212
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 213
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 214
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u6211\u63a5\u6536\u7684\u7167\u7247\u6d41\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_b
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 217
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 218
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterDelMyReceiveFolder(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$5(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/lang/String;)V

    .line 219
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 220
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u6211\u63a5\u6536\u7684\u7167\u7247\u6d41\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_c
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    iget-object v9, v9, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 224
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 225
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5220\u9664\u6211\u63a5\u6536\u7684\u7167\u7247\u6d41\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v2           #map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8           #sharePath:Ljava/lang/String;
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v11, :cond_d

    .line 235
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 236
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4ece\u670d\u52a1\u5668\u8ddf\u636e\u6587\u4ef6\u5939\u6765\u67e5\u627e\u63a5\u6536\u4eba\u53ca\u5176\u72b6\u6001\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_d
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 240
    instance-of v9, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    if-eqz v9, :cond_15

    move-object v6, v3

    .line 241
    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 242
    .local v6, response:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    const/4 v0, 0x0

    .line 243
    .local v0, inShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getInShareList()Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, inShareListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    instance-of v9, v1, Ljava/util/ArrayList;

    if-eqz v9, :cond_e

    move-object v0, v1

    .line 246
    check-cast v0, Ljava/util/ArrayList;

    .line 248
    :cond_e
    const/4 v4, 0x0

    .line 249
    .local v4, outShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, outShareListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    instance-of v9, v5, Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    move-object v4, v5

    .line 253
    check-cast v4, Ljava/util/ArrayList;

    .line 255
    :cond_f
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_12

    .line 256
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4ece\u670d\u52a1\u5668\u8ddf\u636e\u6587\u4ef6\u5939\u6765\u67e5\u627e\u63a5\u6536\u4eba\u53ca\u5176\u72b6\u6001\u6210\u529f--fromPushcall"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_11

    .line 258
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderCreatedFromPush(Ljava/util/ArrayList;)V
    invoke-static {v9, v0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$6(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;)V

    .line 273
    :cond_10
    :goto_1
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 274
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4ece\u670d\u52a1\u5668\u8ddf\u636e\u6587\u4ef6\u5939\u6765\u67e5\u627e\u63a5\u6536\u4eba\u53ca\u5176\u72b6\u6001\u6210\u529f"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_11
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10

    .line 260
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderCreatedFromPush(Ljava/util/ArrayList;)V
    invoke-static {v9, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$6(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 262
    :cond_12
    iget v9, p1, Landroid/os/Message;->arg2:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_14

    .line 263
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_13

    .line 264
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderModifiedFromPush(Ljava/util/ArrayList;Z)V
    invoke-static {v9, v0, v12}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$7(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 265
    :cond_13
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 266
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_10

    .line 267
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderModifiedFromPush(Ljava/util/ArrayList;Z)V
    invoke-static {v9, v4, v11}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$7(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 270
    :cond_14
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterQueryShareFolder(Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;)V
    invoke-static {v9, v6}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$8(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;)V

    goto :goto_1

    .line 277
    .end local v0           #inShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v1           #inShareListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v4           #outShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v5           #outShareListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v6           #response:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    :cond_15
    sget-boolean v9, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v9, :cond_0

    .line 278
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4ece\u670d\u52a1\u5668\u8ddf\u636e\u6587\u4ef6\u5939\u6765\u67e5\u627e\u63a5\u6536\u4eba\u53ca\u5176\u72b6\u6001\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0xfd -> :sswitch_2
        0xfe -> :sswitch_1
        0x104 -> :sswitch_3
        0x105 -> :sswitch_6
        0x10d -> :sswitch_0
        0x111 -> :sswitch_4
        0x113 -> :sswitch_5
    .end sparse-switch
.end method
