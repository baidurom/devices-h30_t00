.class Lcom/android/server/display/WifiDisplayController$31;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2469
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    const-string v0, "WifiDisplayController"

    const-string v1, "user wants to use wifidisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2474
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$7502(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2475
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7600(Lcom/android/server/display/WifiDisplayController;)V

    .line 2477
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2478
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2479
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 2482
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2483
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7800(Lcom/android/server/display/WifiDisplayController;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2484
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7800(Lcom/android/server/display/WifiDisplayController;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mediatek/common/hdmi/IHDMINative;->enableHDMI(Z)Z

    .line 2486
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$7202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2487
    return-void
.end method
