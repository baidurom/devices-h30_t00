.class Lcom/android/hwcamera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ShutterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ShutterButton;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ShutterButton;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton$1;->this$0:Lcom/android/hwcamera/ShutterButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 50
    const-string v0, "Camera"

    const-string v1, "long press entered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton$1;->this$0:Lcom/android/hwcamera/ShutterButton;

    #calls: Lcom/android/hwcamera/ShutterButton;->callShutterButtonLongClick(Z)Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/ShutterButton;->access$000(Lcom/android/hwcamera/ShutterButton;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton$1;->this$0:Lcom/android/hwcamera/ShutterButton;

    #setter for: Lcom/android/hwcamera/ShutterButton;->isLongPressHandled:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/ShutterButton;->access$102(Lcom/android/hwcamera/ShutterButton;Z)Z

    .line 53
    const-string v0, "Camera"

    const-string v1, "long press fired, it\'s burst"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton$1;->this$0:Lcom/android/hwcamera/ShutterButton;

    #setter for: Lcom/android/hwcamera/ShutterButton;->isLongPressed:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/ShutterButton;->access$202(Lcom/android/hwcamera/ShutterButton;Z)Z

    .line 56
    return v2
.end method
