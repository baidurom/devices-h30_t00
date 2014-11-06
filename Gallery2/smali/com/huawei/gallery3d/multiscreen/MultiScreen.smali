.class public Lcom/huawei/gallery3d/multiscreen/MultiScreen;
.super Ljava/lang/Object;
.source "MultiScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;,
        Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    }
.end annotation


# static fields
.field public static final DMS_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field protected static final MULTISCREEN_SUPPORTED:Z = false

.field private static final PACKAGE_SERVICE:Ljava/lang/String; = "com.huawei.android.multiscreen"

.field protected static final TAG:Ljava/lang/String; = "AirSharing_MultiScreen"

.field static isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInstance:Lcom/huawei/gallery3d/multiscreen/MultiScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v0, "ro.config.hw_multiscreen"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->MULTISCREEN_SUPPORTED:Z

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->mInstance:Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    invoke-direct {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;-><init>()V

    sput-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->mInstance:Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    .line 114
    :cond_1
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->mInstance:Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->initialize(Landroid/content/Context;)V

    .line 96
    sget-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->MULTISCREEN_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 98
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->setContext(Landroid/content/Context;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V
    .locals 0
    .parameter "myListener"

    .prologue
    .line 118
    return-void
.end method

.method public getDeviceMediaManager()Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public homePressed()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isCasting()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isHomePressed()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onCreateActionBar(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 133
    const v1, 0x7f100246

    :try_start_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "AirSharing_MultiScreen"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateNearActionBar(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 157
    const v1, 0x7f10023a

    :try_start_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "AirSharing_MultiScreen"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onCreateActionBar(Landroid/view/Menu;)V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onItemSelected(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "pushItem"

    .prologue
    .line 138
    return-void
.end method

.method public onOptionItemSelected(Landroid/net/Uri;I)V
    .locals 0
    .parameter "videoUri"
    .parameter "videoPostion"

    .prologue
    .line 146
    return-void
.end method

.method public onRefreshButtonClicked()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onResume(Landroid/net/Uri;)V
    .locals 0
    .parameter "videoUri"

    .prologue
    .line 140
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onUpPressed()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onUserLeaveHint(I)V
    .locals 0
    .parameter "videoPostion"

    .prologue
    .line 141
    return-void
.end method

.method public prepareMediaItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "mediaItem"

    .prologue
    .line 149
    return-void
.end method

.method public removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V
    .locals 0
    .parameter "myListener"

    .prologue
    .line 119
    return-void
.end method

.method public searchDevice()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 0
    .parameter "mediaItem"
    .parameter "shouldPush"

    .prologue
    .line 153
    return-void
.end method
