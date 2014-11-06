.class public final enum Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
.super Ljava/lang/Enum;
.source "EMirrorStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum CONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum DISCONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum DISCONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum PAUSED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum PAUSING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

.field public static final enum RESUMING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;


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
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 12
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->DISCONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 16
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->PAUSED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 21
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 25
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->DISCONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 29
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "PAUSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->PAUSING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    const-string v1, "RESUMING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->RESUMING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->DISCONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->PAUSED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->DISCONNECTING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->PAUSING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->RESUMING:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
