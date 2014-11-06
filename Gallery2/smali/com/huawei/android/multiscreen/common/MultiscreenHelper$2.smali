.class Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;
.super Ljava/lang/Thread;
.source "MultiscreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->searchDevice()V
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
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    .line 586
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->searchDevice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
