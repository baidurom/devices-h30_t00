.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;
.super Ljava/lang/Enum;
.source "ELogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

.field public static final enum ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

.field public static final enum INFO:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

.field public static final enum TRACE:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

.field public static final enum WARNING:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;


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

    .line 22
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    const-string v1, "ERROR"

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    .line 27
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    const-string v1, "WARNING"

    .line 30
    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->WARNING:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    .line 31
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    const-string v1, "INFO"

    .line 35
    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->INFO:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    .line 36
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    const-string v1, "TRACE"

    .line 40
    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->TRACE:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->WARNING:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->INFO:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->TRACE:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->value:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->value:I

    return v0
.end method
