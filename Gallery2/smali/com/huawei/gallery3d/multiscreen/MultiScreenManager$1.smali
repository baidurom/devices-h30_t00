.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;
.super Landroid/os/Handler;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 122
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->initDmcManager()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$000(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->connectService()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->disconnectService()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 133
    :pswitch_4
    sget-object v3, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 134
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->unbindService()Z

    .line 135
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->resetSelf()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$300(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    .line 136
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->rebindService()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$400(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 139
    :pswitch_5
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "connect to Mirror Scucessed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 143
    :pswitch_6
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "connect to Mirror Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 147
    :pswitch_7
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "Push Task Sucessed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v3

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getCurrentDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setCurrentDmrDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 155
    .local v2, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onPushSucessed()V

    goto :goto_2

    .line 151
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto :goto_0

    .line 160
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_8
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "Push Task Failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 162
    .restart local v2       #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onPushFailed()V

    goto :goto_3

    .line 164
    .end local v2           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto/16 :goto_0

    .line 167
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_9
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
