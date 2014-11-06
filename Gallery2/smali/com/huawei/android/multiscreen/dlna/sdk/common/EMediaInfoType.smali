.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
.super Ljava/lang/Enum;
.source "EMediaInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field public static final enum FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field public static final enum IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field public static final enum IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field public static final enum VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 27
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 31
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 35
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 39
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const-string v1, "IMAGE_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 56
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
