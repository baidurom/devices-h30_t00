.class public final enum Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
.super Ljava/lang/Enum;
.source "EStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

.field public static final enum STARTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

.field public static final enum STARTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

.field public static final enum STOPPED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

.field public static final enum STOPPING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STARTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 11
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;-><init>(Ljava/lang/String;I)V

    .line 14
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STOPPED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 16
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STARTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STOPPING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STARTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STOPPED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STARTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STOPPING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
