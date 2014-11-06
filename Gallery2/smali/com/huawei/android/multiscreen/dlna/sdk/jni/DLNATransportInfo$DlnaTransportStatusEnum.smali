.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
.super Ljava/lang/Enum;
.source "DLNATransportInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DlnaTransportStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

.field public static final enum ERROR_OCCURRED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

.field public static final enum INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

.field public static final enum OK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;-><init>(Ljava/lang/String;I)V

    .line 173
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 174
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;-><init>(Ljava/lang/String;I)V

    .line 177
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->OK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 178
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    const-string v1, "ERROR_OCCURRED"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;-><init>(Ljava/lang/String;I)V

    .line 181
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->ERROR_OCCURRED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->OK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->ERROR_OCCURRED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
