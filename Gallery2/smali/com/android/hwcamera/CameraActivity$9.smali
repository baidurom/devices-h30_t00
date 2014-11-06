.class Lcom/android/hwcamera/CameraActivity$9;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraActivity;->showCanVolumSnapShotHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$9;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$9;->this$0:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/CameraActivity;->mVolumKeySnapShotAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraActivity;->access$802(Lcom/android/hwcamera/CameraActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1550
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$9;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_volum_snap_shot_hint_has_shown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1551
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$9;->this$0:Lcom/android/hwcamera/CameraActivity;

    const-string v1, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->resetCountsByKey(Ljava/lang/String;)V

    .line 1552
    return-void
.end method
