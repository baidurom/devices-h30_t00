.class public final enum Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
.super Ljava/lang/Enum;
.source "DLNATransportInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DlnaTransportStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

.field public static final enum STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 138
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 141
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 142
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 146
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "PAUSED_PLAYBACK"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 149
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 150
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "PAUSED_RECODING"

    invoke-direct {v0, v1, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 153
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 154
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    const-string v1, "NO_MEDIA_PRESENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 133
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ENUM$VALUES:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
