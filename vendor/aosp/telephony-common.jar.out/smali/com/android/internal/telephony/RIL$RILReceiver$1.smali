.class Lcom/android/internal/telephony/RIL$RILReceiver$1;
.super Ljava/lang/Thread;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL$RILReceiver;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/RIL$RILReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL$RILReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 784
    const-wide/32 v2, 0x1d4c0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 790
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 792
    .local v1, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/telephony/RIL;->setExceptionModemEvent(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;I)V

    .line 802
    :cond_0
    :goto_1
    return-void

    .line 785
    .end local v1           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This thread is interrupted, with details:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RILReceiver$1;->this$1:Lcom/android/internal/telephony/RIL$RILReceiver;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x2

    #calls: Lcom/android/internal/telephony/RIL;->setExceptionModemEvent(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;I)V

    goto :goto_1
.end method
