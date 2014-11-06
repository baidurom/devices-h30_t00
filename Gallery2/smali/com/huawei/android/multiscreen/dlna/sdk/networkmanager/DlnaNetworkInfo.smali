.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
.super Ljava/lang/Object;
.source "DlnaNetworkInfo.java"


# instance fields
.field private ipAddress:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private networkType:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "networkName"
    .parameter "networkType"
    .parameter "ipAddress"
    .parameter "macAddress"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkType:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 56
    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->ipAddress:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->macAddress:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkType:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    return-object v0
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddr"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->ipAddress:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "macAddr"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->macAddress:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setNetworkType(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->networkType:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 94
    return-void
.end method
