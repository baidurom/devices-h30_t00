.class public abstract Lcom/huawei/android/freeshare/client/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static CURRENT_ID:I


# instance fields
.field private mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->CURRENT_ID:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget v0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->CURRENT_ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->CURRENT_ID:I

    iput v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->mID:I

    .line 10
    return-void
.end method


# virtual methods
.method public abstract equal(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z
.end method

.method public abstract getDeviceType()I
.end method

.method public final getID()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->mID:I

    return v0
.end method

.method public abstract getIP()Ljava/lang/String;
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
