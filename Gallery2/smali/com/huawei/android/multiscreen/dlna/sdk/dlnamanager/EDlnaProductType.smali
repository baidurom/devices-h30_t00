.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
.super Ljava/lang/Enum;
.source "EDlnaProductType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field public static final enum HuaweiOthers:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field public static final enum HuaweiPad:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field public static final enum HuaweiPhone:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field public static final enum HuaweiSTB:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field public static final enum Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    const-string v1, "Unknown"

    .line 27
    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 28
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    const-string v1, "HuaweiPhone"

    .line 31
    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPhone:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 32
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    const-string v1, "HuaweiSTB"

    .line 35
    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiSTB:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 36
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    const-string v1, "HuaweiPad"

    .line 39
    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPad:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 40
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    const-string v1, "HuaweiOthers"

    .line 43
    invoke-direct {v0, v1, v6, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiOthers:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPhone:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiSTB:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiPad:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->HuaweiOthers:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->value:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->value:I

    return v0
.end method
