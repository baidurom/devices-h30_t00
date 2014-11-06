.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;
.super Ljava/lang/Enum;
.source "ESyncFailedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

.field public static final enum System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    const-string v1, "System"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
