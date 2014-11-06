.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
.super Ljava/lang/Enum;
.source "ShareOperationFlagEnum.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

.field public static final enum REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    const-string v1, "REMOVE_SHARE_FLAG"

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 28
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    const-string v1, "ADD_SHARE_FLAG"

    .line 31
    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 55
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "_value"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->value:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method
