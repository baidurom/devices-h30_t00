.class Lcom/android/hwcamera/ActivityBase$2;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->resetLcdCompensateLight()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ActivityBase;->onStorageStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->doProcessOnPhoneHangup()V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ActivityBase;->switchCameraModule(Z)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
