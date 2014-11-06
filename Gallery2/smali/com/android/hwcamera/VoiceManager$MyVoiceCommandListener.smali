.class Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;
.super Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyVoiceCommandListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VoiceManager;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/VoiceManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    .line 294
    invoke-direct {p0, p2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;-><init>(Landroid/content/Context;)V

    .line 295
    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 7
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 299
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVoiceCommandNotified("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, -0x1

    .line 301
    .local v1, result:I
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 303
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 305
    :pswitch_1
    if-eqz p3, :cond_0

    .line 306
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 307
    if-ne v1, v6, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/hwcamera/VoiceManager;->mCommandId:I
    invoke-static {v2, v3}, Lcom/android/hwcamera/VoiceManager;->access$302(Lcom/android/hwcamera/VoiceManager;I)I

    .line 309
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    iget-object v2, v2, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 318
    :pswitch_2
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 320
    :pswitch_3
    if-eqz p3, :cond_0

    .line 321
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 322
    if-ne v1, v6, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/VoiceManager;->mKeywords:[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/hwcamera/VoiceManager;->access$702(Lcom/android/hwcamera/VoiceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 328
    :pswitch_4
    if-eqz p3, :cond_0

    .line 329
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 330
    if-ne v1, v6, :cond_0

    .line 331
    const-string v2, "Result_Info"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    if-eqz v0, :cond_1

    const-string v2, "on"

    :goto_1
    #setter for: Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/hwcamera/VoiceManager;->access$802(Lcom/android/hwcamera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    iget-object v2, v2, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 332
    :cond_1
    const-string v2, "off"

    goto :goto_1

    .line 338
    .end local v0           #enabled:Z
    :pswitch_5
    if-eqz p3, :cond_0

    .line 339
    const-string v2, "Result"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 340
    if-ne v1, v6, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    const-string v3, "Result_Info"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/hwcamera/VoiceManager;->access$902(Lcom/android/hwcamera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;->this$0:Lcom/android/hwcamera/VoiceManager;

    #calls: Lcom/android/hwcamera/VoiceManager;->notifyCachePathIfNeed()V
    invoke-static {v2}, Lcom/android/hwcamera/VoiceManager;->access$1000(Lcom/android/hwcamera/VoiceManager;)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    .line 318
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
