.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
.super Ljava/lang/Enum;
.source "EVersionMatching.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

.field public static final enum LocalLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

.field public static final enum Matched:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

.field public static final enum RemoteLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    const-string v1, "Matched"

    .line 11
    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->Matched:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    .line 12
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    const-string v1, "LocalLower"

    .line 15
    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->LocalLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    .line 16
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    const-string v1, "RemoteLower"

    .line 19
    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->RemoteLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->Matched:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->LocalLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->RemoteLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    return-object v0
.end method

.method public static valueof(I)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->Matched:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 35
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->LocalLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 37
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->RemoteLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->Matched:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    goto :goto_0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
