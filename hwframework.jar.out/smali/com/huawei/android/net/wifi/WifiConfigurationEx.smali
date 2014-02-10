.class public Lcom/huawei/android/net/wifi/WifiConfigurationEx;
.super Landroid/net/wifi/WifiConfiguration;
.source "WifiConfigurationEx.java"


# instance fields
.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field public wapiAsCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 52
    return-void
.end method


# virtual methods
.method public getWapiAsCert()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWapiCertIndex()I
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWapiPskType()I
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWapiUserCert()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWapiAsCert(Ljava/lang/String;)V
    .locals 2
    .parameter "wapiAsCert"

    .prologue
    .line 59
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWapiCertIndex(I)V
    .locals 2
    .parameter "wapiCertIndex"

    .prologue
    .line 75
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWapiPskType(I)V
    .locals 2
    .parameter "wapiPskType"

    .prologue
    .line 83
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWapiUserCert(Ljava/lang/String;)V
    .locals 2
    .parameter "wapiUserCert"

    .prologue
    .line 67
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
