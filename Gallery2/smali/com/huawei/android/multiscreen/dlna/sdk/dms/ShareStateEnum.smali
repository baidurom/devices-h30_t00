.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
.super Ljava/lang/Enum;
.source "ShareStateEnum.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

.field public static final enum NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

.field public static final enum PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    const-string v1, "NO_SHARE_FLAG"

    .line 24
    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 25
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    const-string v1, "PART_SHARE_FLAG"

    .line 28
    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 29
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    const-string v1, "ALL_SHARE_FLAG"

    .line 32
    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 56
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "_value"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->value:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
