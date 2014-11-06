.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "ACTION_SCREEN_ON"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v3, "set explict_update_spn = 1"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x6a

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSearchNoService:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x12e

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x69

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    goto/16 :goto_0

    .line 319
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mtk.TEST_TRM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const-string/jumbo v2, "mode"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 321
    .local v0, mode:I
    const-string/jumbo v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, slot:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 325
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 326
    if-ne v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-nez v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v5, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 329
    :cond_5
    if-ne v0, v5, :cond_8

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v2

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 333
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 335
    :cond_8
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 336
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v2

    if-ne v2, v6, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-eq v2, v6, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstMD()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-nez v2, :cond_0

    .line 339
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 344
    :cond_b
    if-ne v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-nez v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v5, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method
