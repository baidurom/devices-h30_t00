.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
.super Ljava/lang/Enum;
.source "ETransportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field public static final enum STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;


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

    .line 21
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "INVALID"

    .line 24
    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 25
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "STOPPED"

    .line 28
    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 29
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "PLAYING"

    .line 32
    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "PAUSED_PLAYBACK"

    .line 36
    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 37
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "PAUSED_RECODING"

    .line 40
    invoke-direct {v0, v1, v7, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 41
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    const-string v1, "NO_MEDIA_PRESENT"

    const/4 v2, 0x5

    .line 44
    invoke-direct {v0, v1, v2, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->value:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->value:I

    return v0
.end method
