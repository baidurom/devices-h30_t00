.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;
.super Ljava/lang/Enum;
.source "ESystemEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DlnaServiceDown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

.field public static final enum DlnaServiceUp:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    const-string v1, "DlnaServiceDown"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceDown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    .line 24
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    const-string v1, "DlnaServiceUp"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceUp:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceDown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceUp:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
