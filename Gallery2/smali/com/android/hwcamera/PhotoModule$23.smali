.class Lcom/android/hwcamera/PhotoModule$23;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->initGpsDialog()V
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
    .line 5151
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5153
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$7800(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$7000(Lcom/android/hwcamera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->openLocationAccess(Landroid/content/ContentResolver;)V

    .line 5155
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$7800(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 5158
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5700(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "on"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$7900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->reloadValue()V

    .line 5162
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_recordlocation_key"

    aput-object v3, v1, v2

    const-string v2, "on"

    aput-object v2, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 5164
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$23;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$7502(Lcom/android/hwcamera/PhotoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5165
    return-void
.end method
