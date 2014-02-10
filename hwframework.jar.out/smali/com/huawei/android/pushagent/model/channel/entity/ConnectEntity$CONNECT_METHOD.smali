.class final enum Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;
.super Ljava/lang/Enum;
.source "ConnectEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CONNECT_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

.field public static final enum CONNECT_METHOD_DIRECT_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

.field public static final enum CONNECT_METHOD_DIRECT_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

.field public static final enum CONNECT_METHOD_Proxy_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

.field public static final enum CONNECT_METHOD_Proxy_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    const-string v1, "CONNECT_METHOD_DIRECT_TrsPort"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_DIRECT_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    .line 46
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    const-string v1, "CONNECT_METHOD_DIRECT_DefaultPort"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_DIRECT_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    .line 47
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    const-string v1, "CONNECT_METHOD_Proxy_TrsPort"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_Proxy_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    .line 48
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    const-string v1, "CONNECT_METHOD_Proxy_DefaultPort"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_Proxy_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_DIRECT_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_DIRECT_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_Proxy_TrsPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->CONNECT_METHOD_Proxy_DefaultPort:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->$VALUES:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    return-object v0
.end method
