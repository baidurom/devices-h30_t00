.class Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;
.super Ljava/lang/Object;
.source "MultiscreenHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 99
    const-string v0, "AirSharingPublic_MultiscreenHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v1, 0x1

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mIsServiceBind:Z
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Z)V

    .line 102
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v1

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$3(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    .line 103
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$4(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;)V

    .line 104
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$1(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;)V

    .line 105
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$2(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;)V

    .line 107
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;->onBindStateChanged(I)V

    .line 111
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;-><init>(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)V

    .line 129
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->start()V

    .line 130
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 81
    :try_start_0
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "onServiceDisconnected"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mIsServiceBind:Z
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Z)V

    .line 84
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$1(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;)V

    .line 85
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$2(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;)V

    .line 86
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$3(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    .line 87
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$4(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;)V

    .line 89
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;->onBindStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
