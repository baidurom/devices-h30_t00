.class Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;
.super Landroid/os/Handler;
.source "PhotoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .local v3, obj:Ljava/lang/Object;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 196
    .end local v3           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 93
    .restart local v3       #obj:Ljava/lang/Object;
    :sswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v6, :cond_1

    .line 95
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    .line 99
    instance-of v6, v3, [Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 100
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    check-cast v3, [Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->afterUploadEntitySuccess([Ljava/lang/String;)V
    invoke-static {v6, v3}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$1(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;[Ljava/lang/String;)V

    .line 101
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 102
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u6210\u529f"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v6, :cond_3

    .line 116
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u5220\u9664\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    .line 120
    instance-of v6, v3, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 121
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->afterRemoveFilesSuccess(Ljava/util/ArrayList;)V
    invoke-static {v6, v3}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$2(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Ljava/util/ArrayList;)V

    .line 122
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u5220\u9664\u6210\u529f"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_4
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u5220\u9664\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_5

    .line 144
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 145
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_5
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    .line 148
    instance-of v6, v3, Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 149
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->updateTaskInfo(Ljava/util/ArrayList;I)V
    invoke-static {v6, v3, v7}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$3(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Ljava/util/ArrayList;I)V

    .line 150
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u6210\u529f"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_6
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    move-object v0, v3

    .line 162
    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 163
    .local v0, item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v6, :cond_9

    .line 164
    iget-object v7, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    const-string v8, "nsp://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 165
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, localPath:Ljava/lang/String;
    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 167
    .local v5, savePath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, phycialPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v7, v6, v8, v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v2           #localPath:Ljava/lang/String;
    .end local v4           #phycialPath:Ljava/lang/String;
    .end local v5           #savePath:Ljava/lang/String;
    :cond_7
    :goto_1
    const-string v6, "DownloadOrigPhoto"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_8
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    iget-object v9, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-static {v7, v6, v8, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_7

    .line 173
    iget-object v6, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    const-string v8, "nsp://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 174
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v6, v6, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2       #localPath:Ljava/lang/String;
    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 176
    .restart local v5       #savePath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    .restart local v4       #phycialPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v6, v6, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v2           #localPath:Ljava/lang/String;
    .end local v4           #phycialPath:Ljava/lang/String;
    .end local v5           #savePath:Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v6, v6, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    iget-object v9, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    :sswitch_5
    move-object v1, v3

    .line 185
    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 186
    .local v1, item1:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    .line 187
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    iget-object v8, v8, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    .line 188
    iget-object v9, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    iget-object v10, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 189
    iget-object v10, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isMyPhotoStreamPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v6, v7

    .line 187
    :cond_b
    invoke-static {v8, v9, v6, v7}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xff -> :sswitch_4
        0x106 -> :sswitch_2
        0x107 -> :sswitch_3
        0x10e -> :sswitch_5
        0x137 -> :sswitch_1
    .end sparse-switch
.end method
