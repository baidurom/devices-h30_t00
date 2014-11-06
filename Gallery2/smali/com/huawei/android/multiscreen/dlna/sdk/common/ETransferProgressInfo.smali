.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;
.super Ljava/lang/Enum;
.source "ETransferProgressInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field public static final enum ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field public static final enum INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field public static final enum IN_PROGRESS:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field public static final enum STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;


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

    .line 8
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    const-string v1, "INVALID"

    .line 11
    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 12
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    const-string v1, "STOPPED"

    .line 15
    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 16
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    const-string v1, "IN_PROGRESS"

    .line 19
    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->IN_PROGRESS:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    const-string v1, "COMPLETED"

    .line 23
    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 24
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    const-string v1, "ERROR"

    .line 27
    invoke-direct {v0, v1, v7, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->IN_PROGRESS:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->value:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->value:I

    return v0
.end method
