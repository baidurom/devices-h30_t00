.class public final enum Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;
.super Ljava/lang/Enum;
.source "SocketReadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocketEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

.field public static final enum SocketEvent_CLOSE:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

.field public static final enum SocketEvent_CONNECTED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

.field public static final enum SocketEvent_CONNECTING:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

.field public static final enum SocketEvent_MSG_RECEIVED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    const-string v1, "SocketEvent_CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTING:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    .line 37
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    const-string v1, "SocketEvent_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    .line 38
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    const-string v1, "SocketEvent_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CLOSE:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    .line 44
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    const-string v1, "SocketEvent_MSG_RECEIVED"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_MSG_RECEIVED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTING:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CLOSE:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_MSG_RECEIVED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    return-object v0
.end method
