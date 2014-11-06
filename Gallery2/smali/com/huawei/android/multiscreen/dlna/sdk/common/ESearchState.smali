.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
.super Ljava/lang/Enum;
.source "ESearchState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field public static final enum IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field public static final enum NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

.field public static final enum PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    const-string v1, "NO_SEARCH"

    .line 20
    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 22
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    const-string v1, "PART_SEARCH"

    .line 25
    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 27
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    const-string v1, "IN_SEARCH"

    .line 30
    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 32
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    const-string v1, "COMPLETED"

    .line 35
    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->IN_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->value:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->value:I

    return v0
.end method
