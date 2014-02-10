.class public Lcom/huawei/android/net/wifi/NfcWifiManagerEx;
.super Ljava/lang/Object;
.source "NfcWifiManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWpaSuppConfig(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2
    .parameter "mWifiManager"

    .prologue
    .line 16
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
