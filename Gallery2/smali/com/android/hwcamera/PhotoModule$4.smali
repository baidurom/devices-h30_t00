.class Lcom/android/hwcamera/PhotoModule$4;
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
    .line 382
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$4;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$4;->this$0:Lcom/android/hwcamera/PhotoModule;

    #setter for: Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/PhotoModule;->access$102(Lcom/android/hwcamera/PhotoModule;Z)Z

    .line 386
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$4;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$4;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonClick()V

    .line 388
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$4;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 389
    return-void
.end method
