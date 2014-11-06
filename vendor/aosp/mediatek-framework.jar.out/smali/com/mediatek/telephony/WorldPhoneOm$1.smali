.class Lcom/mediatek/telephony/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    const-string v4, "[BroadcastReceiver]+"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 384
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 385
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, simStatus:Ljava/lang/String;
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 387
    .local v3, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 388
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 390
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$100()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aput-object v5, v4, v3

    .line 391
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$100()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aput-object v5, v4, v3

    .line 392
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImsi["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 395
    const-string v4, "3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$502(I)I

    .line 397
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 398
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 399
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$500()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 400
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$802(Z)Z

    .line 401
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 402
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    const/4 v5, 0x4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 409
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 410
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI fot slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now ready, resuming PLMN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1200()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V
    invoke-static {v4, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1400(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 462
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_1
    :goto_1
    const-string v4, "[BroadcastReceiver]-"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 463
    return-void

    .line 404
    .restart local v2       #simStatus:Ljava/lang/String;
    .restart local v3       #slotId:I
    :cond_2
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$500()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 405
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->access$802(Z)Z

    .line 406
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    .line 418
    const-string v4, "Not 3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_4
    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v3

    .line 422
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 423
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 424
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 425
    const-string v4, "3G Sim removed, no world phone service"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 426
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->access$502(I)I

    .line 427
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1502(I)I

    .line 428
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->access$802(Z)Z

    .line 429
    const/16 v4, -0x63

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$402(I)I

    goto :goto_1

    .line 431
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not 3G slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 435
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()I

    move-result v4

    const/16 v5, -0x62

    if-eq v4, v5, :cond_7

    .line 436
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$402(I)I

    .line 438
    :cond_7
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1600(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 439
    :cond_8
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 441
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_1

    .line 442
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 443
    .restart local v3       #slotId:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1802(I)I

    .line 445
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1902(I)I

    .line 446
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2002(I)I

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEmergencyOnly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlmnSs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2000()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRegState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1900()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRilRadioTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1800()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1900()I

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2000()I

    move-result v4

    if-eq v4, v7, :cond_a

    :cond_9
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1900()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 456
    :cond_a
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 457
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2100(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1
.end method
