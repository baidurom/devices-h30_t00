.class Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;
.super Landroid/os/Handler;
.source "MyPhotoStreamLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .local v1, obj:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 129
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v1       #obj:Ljava/lang/Object;
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    iget-object v5, v5, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v5, "/Photoshare/myphoto"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 81
    .local v3, result:Z
    if-nez v3, :cond_1

    .line 83
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file.mkdirs() fail"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v3           #result:Z
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/TaskesCounter;->countDownTask()V

    .line 87
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_2

    .line 89
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u5931\u8d25"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_0

    .line 93
    instance-of v4, v1, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 94
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    aget-object v6, v4, v6

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v7

    .line 95
    check-cast v1, [Ljava/lang/String;

    .end local v1           #obj:Ljava/lang/Object;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    .line 94
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->afterUploadEntitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v4, v7}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$1(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u6210\u529f"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_3
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e0a\u4f20\u4e91\u7aef\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v0           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_4

    .line 109
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u5931\u8d25"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_0

    .line 113
    instance-of v4, v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #obj:Ljava/lang/Object;
    #calls: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->updateTaskInfo(Ljava/util/ArrayList;I)V
    invoke-static {v4, v1, v6}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$2(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Ljava/util/ArrayList;I)V

    .line 115
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u6210\u529f"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_5
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;->this$0:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    #getter for: Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7167\u7247\u4e91\u7aef\u64cd\u4f5c\u7ed3\u675f\u540e\u901a\u77e5\u4e1a\u52a1\u670d\u52a1\u5668\u6210\u529f\u540e\u8fd4\u56de\u503c\u7c7b\u578b\u9519\u8bef"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x107 -> :sswitch_1
        0x137 -> :sswitch_0
    .end sparse-switch
.end method
