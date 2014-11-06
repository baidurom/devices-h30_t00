.class Lcom/android/internal/telephony/gsm/SIMRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 2977
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2979
    if-nez p2, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2981
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHandlePhbReadyReceiver Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2982
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2983
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2984
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSIMInfoReady:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$302(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 2985
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 2987
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2988
    .local v1, phbFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2989
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2990
    const-string v3, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2991
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3005
    .end local v1           #phbFilter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3006
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string/jumbo v4, "mHandlePhbReadyReceiver ACTION_SHUTDOWN_IPO: reset PHB_READY"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3008
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$502(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3011
    :cond_3
    const-string v3, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3012
    const-string/jumbo v3, "simId"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3013
    .local v2, simId:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHandlePhbReadyReceiver ACTION_IVSR_NOTIFY: reset SIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PHB_READY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3015
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$600(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3016
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$700(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$502(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3018
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$1;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHandlePhbReadyReceiver ACTION_IVSR_NOTIFY: set SIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PHB_READY false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
