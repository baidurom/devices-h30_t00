.class Lcom/android/hwcamera/PhotoModule$27;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 5945
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5948
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 5949
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mQuickCapture:Z
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8200(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5950
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->showPostCaptureAlert()V
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8300(Lcom/android/hwcamera/PhotoModule;)V

    .line 5954
    :goto_0
    return-void

    .line 5952
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$27;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->doAttach()V
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8400(Lcom/android/hwcamera/PhotoModule;)V

    goto :goto_0
.end method
