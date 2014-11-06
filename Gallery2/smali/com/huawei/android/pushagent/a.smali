.class final enum Lcom/huawei/android/pushagent/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/huawei/android/pushagent/a;

.field public static final enum b:Lcom/huawei/android/pushagent/a;

.field public static final enum c:Lcom/huawei/android/pushagent/a;

.field public static final enum d:Lcom/huawei/android/pushagent/a;

.field public static final enum e:Lcom/huawei/android/pushagent/a;

.field public static final enum f:Lcom/huawei/android/pushagent/a;

.field private static final synthetic g:[Lcom/huawei/android/pushagent/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_Init"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->a:Lcom/huawei/android/pushagent/a;

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_Token"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->b:Lcom/huawei/android/pushagent/a;

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_Msg"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->c:Lcom/huawei/android/pushagent/a;

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_PushState"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->d:Lcom/huawei/android/pushagent/a;

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_NotifyClick"

    invoke-direct {v0, v1, v7}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->e:Lcom/huawei/android/pushagent/a;

    new-instance v0, Lcom/huawei/android/pushagent/a;

    const-string v1, "ReceiveType_PluginRsp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/a;->f:Lcom/huawei/android/pushagent/a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/android/pushagent/a;

    sget-object v1, Lcom/huawei/android/pushagent/a;->a:Lcom/huawei/android/pushagent/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/a;->b:Lcom/huawei/android/pushagent/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/a;->c:Lcom/huawei/android/pushagent/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/pushagent/a;->d:Lcom/huawei/android/pushagent/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/pushagent/a;->e:Lcom/huawei/android/pushagent/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/pushagent/a;->f:Lcom/huawei/android/pushagent/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/pushagent/a;->g:[Lcom/huawei/android/pushagent/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/a;
    .locals 1

    const-class v0, Lcom/huawei/android/pushagent/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/a;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/a;
    .locals 1

    sget-object v0, Lcom/huawei/android/pushagent/a;->g:[Lcom/huawei/android/pushagent/a;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/a;

    return-object v0
.end method
