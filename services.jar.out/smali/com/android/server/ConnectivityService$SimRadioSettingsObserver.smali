.class Lcom/android/server/ConnectivityService$SimRadioSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimRadioSettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWhat:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 3899
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3900
    iput-object p1, p0, Lcom/android/server/ConnectivityService$SimRadioSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 3901
    iput p2, p0, Lcom/android/server/ConnectivityService$SimRadioSettingsObserver;->mWhat:I

    .line 3902
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3905
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3906
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dual_sim_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3908
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 3912
    const-string v0, "SimRadioSettingsObserver onChange"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3913
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SimRadioSettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ConnectivityService$SimRadioSettingsObserver;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3914
    return-void
.end method
