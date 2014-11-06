.class public Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;
.super Ljava/lang/Object;
.source "SDiscoveryProperty.java"


# instance fields
.field private mIPAddress:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "iPAddress"
    .parameter "macAddress"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mIPAddress:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mMacAddress:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "iPAddress"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mIPAddress:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;->mMacAddress:Ljava/lang/String;

    .line 52
    return-void
.end method
