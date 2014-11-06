.class Lcom/android/hwcamera/VoiceManager$MainHandler;
.super Landroid/os/Handler;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VoiceManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VoiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VoiceManager;Lcom/android/hwcamera/VoiceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VoiceManager$MainHandler;-><init>(Lcom/android/hwcamera/VoiceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 74
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    #calls: Lcom/android/hwcamera/VoiceManager;->notifyUserGuideIfNeed()V
    invoke-static {v0}, Lcom/android/hwcamera/VoiceManager;->access$100(Lcom/android/hwcamera/VoiceManager;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    #calls: Lcom/android/hwcamera/VoiceManager;->notifyStateChangedIfNeed()V
    invoke-static {v0}, Lcom/android/hwcamera/VoiceManager;->access$200(Lcom/android/hwcamera/VoiceManager;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    #getter for: Lcom/android/hwcamera/VoiceManager;->mCommandId:I
    invoke-static {v1}, Lcom/android/hwcamera/VoiceManager;->access$300(Lcom/android/hwcamera/VoiceManager;)I

    move-result v1

    #calls: Lcom/android/hwcamera/VoiceManager;->notifyCommandIfNeed(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VoiceManager;->access$400(Lcom/android/hwcamera/VoiceManager;I)V

    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager$MainHandler;->this$0:Lcom/android/hwcamera/VoiceManager;

    #getter for: Lcom/android/hwcamera/VoiceManager;->mVoiceCommandId:I
    invoke-static {v1}, Lcom/android/hwcamera/VoiceManager;->access$500(Lcom/android/hwcamera/VoiceManager;)I

    move-result v1

    #calls: Lcom/android/hwcamera/VoiceManager;->playVoiceCommandSound(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VoiceManager;->access$600(Lcom/android/hwcamera/VoiceManager;I)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
