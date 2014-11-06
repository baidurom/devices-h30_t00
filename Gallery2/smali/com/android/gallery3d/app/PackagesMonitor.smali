.class public Lcom/android/gallery3d/app/PackagesMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackagesMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PackagesMonitor$AsyncService;
    }
.end annotation


# static fields
.field public static final KEY_PACKAGES_VERSION:Ljava/lang/String; = "packages-version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getPackagesVersion(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    const-class v2, Lcom/android/gallery3d/app/PackagesMonitor;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "packages-version"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 34
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "packages-version"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 60
    .local v4, version:I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "packages-version"

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 64
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, packageName:Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-static {p0, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    invoke-static {p0, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-static {p0, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    const-class v0, Lcom/android/gallery3d/app/PackagesMonitor$AsyncService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method
