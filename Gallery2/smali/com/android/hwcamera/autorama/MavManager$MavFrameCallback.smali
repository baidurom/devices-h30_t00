.class final Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;
.super Ljava/lang/Object;
.source "MavManager.java"

# interfaces
.implements Landroid/hardware/Camera$MAVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/MavManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MavFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/MavManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/autorama/MavManager;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/autorama/MavManager;Lcom/android/hwcamera/autorama/MavManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;-><init>(Lcom/android/hwcamera/autorama/MavManager;)V

    return-void
.end method


# virtual methods
.method public onFrame()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 132
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v2}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I
    invoke-static {v2}, Lcom/android/hwcamera/autorama/MavManager;->access$500(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$500(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$500(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 138
    :cond_2
    const-string v0, "MavManager"

    const-string v1, "mav done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$502(Lcom/android/hwcamera/autorama/MavManager;I)I

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    const/4 v1, 0x1

    #calls: Lcom/android/hwcamera/autorama/MavManager;->onHardwareStopped(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$600(Lcom/android/hwcamera/autorama/MavManager;Z)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$108(Lcom/android/hwcamera/autorama/MavManager;)I

    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 149
    const-string v0, "MavManager"

    const-string v1, "send stop msg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$100(Lcom/android/hwcamera/autorama/MavManager;)I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 144
    :cond_4
    const-string v0, "MavManager"

    const-string v1, "onFrame is called in abnormal state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
