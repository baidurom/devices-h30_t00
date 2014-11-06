.class Lcom/android/hwcamera/autorama/MavManager$2$1;
.super Ljava/lang/Object;
.source "MavManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/autorama/MavManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/autorama/MavManager$2;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/MavManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager$2$1;->this$1:Lcom/android/hwcamera/autorama/MavManager$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2$1;->this$1:Lcom/android/hwcamera/autorama/MavManager$2;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #setter for: Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$902(Lcom/android/hwcamera/autorama/MavManager;Z)Z

    .line 239
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2$1;->this$1:Lcom/android/hwcamera/autorama/MavManager$2;

    iget-boolean v0, v0, Lcom/android/hwcamera/autorama/MavManager$2;->val$isMerge:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2$1;->this$1:Lcom/android/hwcamera/autorama/MavManager$2;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #calls: Lcom/android/hwcamera/autorama/MavManager;->onHardwareStopped(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$600(Lcom/android/hwcamera/autorama/MavManager;Z)V

    .line 244
    :cond_0
    return-void
.end method
