.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;
.super Ljava/lang/Object;
.source "MultiScreenManager.java"

# interfaces
.implements Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;


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
    .line 1123
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceChanged()V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1163
    return-void
.end method

.method public onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 1143
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getUDN()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getCurrentDmrDeviceUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1145
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getDmrName()Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, deviceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setDefaultDmr()V

    .line 1147
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirroring()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 1149
    .local v2, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v2, v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onCurrentDeviceDown(Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    instance-of v3, p1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v3, :cond_1

    .line 1154
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1158
    :goto_1
    return-void

    .line 1156
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1134
    instance-of v0, p1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1139
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onMediaChanged(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1127
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 1128
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onMediaChanged()V

    goto :goto_0

    .line 1130
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    return-void
.end method
