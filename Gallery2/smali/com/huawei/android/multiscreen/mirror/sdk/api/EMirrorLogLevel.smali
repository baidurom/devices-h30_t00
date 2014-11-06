.class public final enum Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;
.super Ljava/lang/Enum;
.source "EMirrorLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

.field public static final enum ERROR:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

.field public static final enum INFO:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

.field public static final enum WARN:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->DEBUG:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 14
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->INFO:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 18
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->WARN:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 22
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ERROR:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->DEBUG:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->INFO:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->WARN:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ERROR:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
