.class public Lcom/huawei/android/net/wifi/WifiManagerEx;
.super Ljava/lang/Object;
.source "WifiManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApLinkedStaList(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSoftapDisassociateSta(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 2
    .parameter "obj"
    .parameter "mac"

    .prologue
    .line 88
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSoftapMacFilter(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 2
    .parameter "obj"
    .parameter "macFilter"

    .prologue
    .line 76
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setWifiApMaxSCB(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .parameter "obj"
    .parameter "wifiConfig"
    .parameter "maxNum"

    .prologue
    .line 93
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
