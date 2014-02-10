.class public final enum Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
.super Ljava/lang/Enum;
.source "IPushChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

.field public static final enum ChannelType_Normal:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

.field public static final enum ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

.field public static final enum ChannelType_SSL_Resume:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    const-string v1, "ChannelType_Normal"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_Normal:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 20
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    const-string v1, "ChannelType_SSL"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 21
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    const-string v1, "ChannelType_SSL_Resume"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL_Resume:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_Normal:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL_Resume:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-object v0
.end method
