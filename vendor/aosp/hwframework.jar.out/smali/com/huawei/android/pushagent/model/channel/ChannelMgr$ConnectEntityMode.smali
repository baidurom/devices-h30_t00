.class public final enum Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
.super Ljava/lang/Enum;
.source "ChannelMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectEntityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

.field public static final enum ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

.field public static final enum ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    const-string v1, "ConnectEntity_Push"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    new-instance v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    const-string v1, "ConnectEntity_Polling"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    return-object v0
.end method
