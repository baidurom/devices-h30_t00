.class public Lcom/android/gallery3d/app/UpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    :try_start_0
    sget-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->FIXED_WALLPAPER_ENANBLED:Z

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.gallery3d.app.LockWallpaper"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpgradeReceiver"

    const-string v2, "UpgradeReceiver"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
