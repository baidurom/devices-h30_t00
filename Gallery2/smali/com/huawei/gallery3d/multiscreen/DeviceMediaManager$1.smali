.class Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;
.super Landroid/os/Handler;
.source "DeviceMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->DeviceCountChanged()V
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$100(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)V

    .line 70
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    invoke-interface {v1, v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;->onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;->onMediaChanged(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #calls: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->DeviceCountChanged()V
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$100(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)V

    .line 79
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    invoke-interface {v1, v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;->onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;->this$0:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;->onDeviceChanged()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
