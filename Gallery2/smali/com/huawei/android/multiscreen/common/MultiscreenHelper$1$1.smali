.class Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;
.super Ljava/lang/Thread;
.source "MultiscreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$7(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v2

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$7(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->startDlna(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;->onBindStateChanged(I)V

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$8(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)V

    .line 128
    :cond_1
    :goto_1
    return-void

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1$1;->this$1:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->this$0:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;->access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    #getter for: Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;->onBindStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
