.class final Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMAMVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AUTORAMAMVCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/PanoramaManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;Lcom/android/hwcamera/autorama/PanoramaManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V

    return-void
.end method


# virtual methods
.method public onFrame(II)V
    .locals 3
    .parameter "xy"
    .parameter "direction"

    .prologue
    .line 182
    const-string v1, "PanoramaManager"

    const-string v2, "AUTORAMAMVCallback onFrame: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 186
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 187
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v1, v1, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method
