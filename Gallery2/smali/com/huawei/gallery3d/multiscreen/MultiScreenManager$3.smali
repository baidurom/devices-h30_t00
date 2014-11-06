.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;
.super Ljava/lang/Object;
.source "MultiScreenManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;


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
    .line 1169
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1173
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "BindStateCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    packed-switch p1, :pswitch_data_0

    .line 1201
    const-string v0, "AirSharing_MultiScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback : Service error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :goto_0
    return-void

    .line 1176
    :pswitch_0
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "Callback : DLNA_SUCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1180
    :pswitch_1
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "Callback : DLNA_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1183
    :pswitch_2
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "Callback : SERVICE_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    goto :goto_0

    .line 1187
    :pswitch_3
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "Callback : SERVICE_CONNECT_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 1189
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$2210()I

    .line 1190
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1197
    :pswitch_4
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "Callback : SERVICE_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
