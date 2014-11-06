.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
.super Ljava/lang/Enum;
.source "ENetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bluetooth:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field public static final enum ETHERNET:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field public static final enum NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field public static final enum WIFI:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field public static final enum WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

.field public static final enum WIMAX:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "NO_NETWORK"

    .line 23
    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 25
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "WIFI"

    .line 28
    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 30
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "ETHERNET"

    .line 33
    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->ETHERNET:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 35
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "WIMAX"

    .line 38
    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIMAX:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 40
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "WIFI_DIRECT"

    .line 43
    invoke-direct {v0, v1, v7, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 45
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    const-string v1, "Bluetooth"

    const/4 v2, 0x5

    .line 48
    invoke-direct {v0, v1, v2, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->Bluetooth:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->ETHERNET:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIMAX:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->Bluetooth:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->value:I

    .line 52
    return-void
.end method

.method static converToEnum(I)Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    .locals 1
    .parameter "type"

    .prologue
    .line 67
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 68
    .local v0, networkType:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    packed-switch p0, :pswitch_data_0

    .line 90
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->ETHERNET:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIMAX:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 83
    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->Bluetooth:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    .line 86
    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->value:I

    return v0
.end method
