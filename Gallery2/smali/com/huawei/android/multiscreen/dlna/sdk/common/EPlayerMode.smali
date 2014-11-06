.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;
.super Ljava/lang/Enum;
.source "EPlayerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DmpPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

.field public static final enum DmrPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

.field public static final enum LocalPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    const-string v1, "LocalPlayer"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->LocalPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    .line 24
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    const-string v1, "DmpPlayer"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->DmpPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    .line 28
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    const-string v1, "DmrPlayer"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->DmrPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->LocalPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->DmpPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->DmrPlayer:Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/EPlayerMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
