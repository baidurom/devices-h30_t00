.class Lcom/android/hwcamera/PhotoModule$26;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->showLongPressBurstHint()V
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
    .line 5701
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$26;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5703
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$26;->this$0:Lcom/android/hwcamera/PhotoModule;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J
    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/PhotoModule;->access$8002(Lcom/android/hwcamera/PhotoModule;J)J

    .line 5704
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$26;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const-string v1, "key_count_of_continue_snap_shot"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->resetCountsByKey(Ljava/lang/String;)V

    .line 5705
    return-void
.end method
