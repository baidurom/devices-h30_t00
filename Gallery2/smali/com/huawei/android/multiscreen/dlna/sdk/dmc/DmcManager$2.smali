.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;
.super Ljava/lang/Object;
.source "DmcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithDeviceChanged(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

.field private final synthetic val$device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;->val$device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    .line 481
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$2;->val$device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v1

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    .line 486
    return-void
.end method
