.class Lcom/android/hwcamera/PhotoModule$18;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->confirmBackPressDailog()V
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
    .line 4681
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$18;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4683
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$18;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$7502(Lcom/android/hwcamera/PhotoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4684
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$18;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->finish()V

    .line 4685
    return-void
.end method
