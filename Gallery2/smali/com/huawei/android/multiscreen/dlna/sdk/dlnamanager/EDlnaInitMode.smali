.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
.super Ljava/lang/Enum;
.source "EDlnaInitMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS_DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field public static final enum DMS_DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS_DMR_DMP"

    .line 24
    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 25
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS_DMR"

    .line 28
    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 29
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS_DMP"

    .line 32
    invoke-direct {v0, v1, v6, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS"

    .line 36
    invoke-direct {v0, v1, v7, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 37
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMP"

    .line 40
    invoke-direct {v0, v1, v8, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 41
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMR"

    const/4 v2, 0x5

    .line 44
    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 45
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMR_DMP"

    const/4 v2, 0x6

    .line 48
    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 49
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS_DMC"

    const/4 v2, 0x7

    .line 52
    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 53
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMR_DMC"

    const/16 v2, 0x8

    .line 56
    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 57
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMC"

    const/16 v2, 0x9

    .line 60
    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 61
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    const-string v1, "DMS_DMR_DMC"

    const/16 v2, 0xa

    .line 64
    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->value:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->value:I

    return v0
.end method
