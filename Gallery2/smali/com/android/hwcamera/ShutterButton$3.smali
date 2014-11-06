.class Lcom/android/hwcamera/ShutterButton$3;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton$3;->this$0:Lcom/android/hwcamera/ShutterButton;

    iput-boolean p2, p0, Lcom/android/hwcamera/ShutterButton$3;->val$pressed:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton$3;->this$0:Lcom/android/hwcamera/ShutterButton;

    #getter for: Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;
    invoke-static {v0}, Lcom/android/hwcamera/ShutterButton;->access$400(Lcom/android/hwcamera/ShutterButton;)Lcom/android/hwcamera/OnShutterButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton$3;->this$0:Lcom/android/hwcamera/ShutterButton;

    #getter for: Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;
    invoke-static {v0}, Lcom/android/hwcamera/ShutterButton;->access$400(Lcom/android/hwcamera/ShutterButton;)Lcom/android/hwcamera/OnShutterButtonListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/ShutterButton$3;->val$pressed:Z

    invoke-interface {v0, v1}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 168
    :cond_0
    return-void
.end method
