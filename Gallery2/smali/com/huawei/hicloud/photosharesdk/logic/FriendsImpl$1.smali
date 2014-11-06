.class Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;
.super Landroid/os/Handler;
.source "FriendsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .local v0, obj:Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 122
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0       #obj:Ljava/lang/Object;
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_1

    .line 79
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u63a5\u6536\u4eba\u5217\u8868\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 84
    instance-of v1, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->getFriendList()Ljava/util/List;

    move-result-object v2

    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->afterQueryFriendSuccess(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$1(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Ljava/util/List;)V

    .line 86
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u63a5\u6536\u4eba\u5217\u8868\u6210\u529f"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u63a5\u6536\u4eba\u5217\u8868\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_3

    .line 100
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendIsHwAccount(Landroid/content/Context;Ljava/util/HashMap;I)V

    .line 101
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u63a5\u6536\u4eba\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 105
    instance-of v1, v0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    check-cast v0, Ljava/util/LinkedHashMap;

    .end local v0           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->afterCheckAccountSuccess(Ljava/util/LinkedHashMap;)V
    invoke-static {v1, v0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$2(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Ljava/util/LinkedHashMap;)V

    .line 107
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u63a5\u6536\u4eba\u8bf7\u6c42\u6210\u529f"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendIsHwAccount(Landroid/content/Context;Ljava/util/HashMap;I)V

    .line 112
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u63a5\u6536\u4eba\u8bf7\u6c42\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
