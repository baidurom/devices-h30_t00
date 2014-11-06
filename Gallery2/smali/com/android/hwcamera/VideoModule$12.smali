.class Lcom/android/hwcamera/VideoModule$12;
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
    .line 3286
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3288
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3800(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3900(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->reloadValue()V

    .line 3293
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3295
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4000(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v1, v3

    const-string v2, "off"

    aput-object v2, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$12;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$4102(Lcom/android/hwcamera/VideoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3297
    return-void
.end method
