.class Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;
.super Ljava/util/TimerTask;
.source "AlphaState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/AlphaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfStateChangedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/AlphaState;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/AlphaState;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/AlphaState;Lcom/android/hwcamera/ui/AlphaState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;-><init>(Lcom/android/hwcamera/ui/AlphaState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    .line 32
    return-void
.end method
