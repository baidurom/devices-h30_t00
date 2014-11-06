.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;
.super Ljava/lang/Enum;
.source "ERemoteDeviceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

.field public static final enum DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    const-string v1, "DMS_DEVICE"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    .line 26
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    const-string v1, "DMR_DEVICE"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    .line 42
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
