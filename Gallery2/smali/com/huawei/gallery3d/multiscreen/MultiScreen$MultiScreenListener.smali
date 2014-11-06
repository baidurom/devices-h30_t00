.class public Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.super Ljava/lang/Object;
.source "MultiScreen.java"

# interfaces
.implements Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiScreenListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeToMirror()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onControllerLaunched()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onCurrentDeviceDown(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 51
    return-void
.end method

.method public onDeviceChanged()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onHideTips(Z)V
    .locals 0
    .parameter "noLongerRemind"

    .prologue
    .line 63
    return-void
.end method

.method public onLostDmrControl()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onMediaChanged()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onNetworkError()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onPushFailed()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onPushSucessed()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onRefreshing()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onShowTips(Z)V
    .locals 0
    .parameter "isConnected"

    .prologue
    .line 61
    return-void
.end method

.method public onUserDisconnect()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public updateAirSaringItem(ZZ)V
    .locals 0
    .parameter "isVisible"
    .parameter "isConnected"

    .prologue
    .line 77
    return-void
.end method

.method public updateSharingAroundItem(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 79
    return-void
.end method
