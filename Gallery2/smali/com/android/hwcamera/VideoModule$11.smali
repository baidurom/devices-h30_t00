.class Lcom/android/hwcamera/VideoModule$11;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->initGpsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3271
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3273
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$3700(Lcom/android/hwcamera/VideoModule;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->openLocationAccess(Landroid/content/ContentResolver;)V

    .line 3275
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3278
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3800(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "on"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3900(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->reloadValue()V

    .line 3280
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4000(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_recordlocation_key"

    aput-object v3, v1, v2

    const-string v2, "on"

    aput-object v2, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 3282
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$11;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$4102(Lcom/android/hwcamera/VideoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3283
    return-void
.end method
