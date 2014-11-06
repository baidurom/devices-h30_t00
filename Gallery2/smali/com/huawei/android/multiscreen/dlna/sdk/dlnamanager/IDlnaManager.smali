.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;
.super Ljava/lang/Object;
.source "IDlnaManager.java"


# virtual methods
.method public abstract addDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
.end method

.method public abstract exitDlna()Z
.end method

.method public abstract exitMS()Z
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDlnaNetworkPolicy()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;
.end method

.method public abstract getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
.end method

.method public abstract getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
.end method

.method public abstract getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
.end method

.method public abstract getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initContext(Landroid/content/Context;)V
.end method

.method public abstract isStarted()Z
.end method

.method public abstract removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
.end method

.method public abstract setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V
.end method

.method public abstract setDlnaNetworkPolicy(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;)V
.end method

.method public abstract setLogLevel(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;)V
.end method

.method public abstract startDlna(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
.end method
