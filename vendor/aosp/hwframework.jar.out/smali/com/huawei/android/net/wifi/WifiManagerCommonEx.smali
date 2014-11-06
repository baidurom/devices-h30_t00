.class public Lcom/huawei/android/net/wifi/WifiManagerCommonEx;
.super Ljava/lang/Object;
.source "WifiManagerCommonEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSignalLevelHW(I)I
    .locals 1
    .parameter "rssi"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->calculateSignalLevelHW(I)I

    move-result v0

    return v0
.end method
