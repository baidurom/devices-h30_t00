.class public final enum Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
.super Ljava/lang/Enum;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSGType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

.field public static final enum MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

.field public static final enum MSGType_NeedSrv_Immdia_Rsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

.field public static final enum MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

.field public static final enum MSGType_Other:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    const-string v1, "MSGType_NeedSrvRsp"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    .line 16
    new-instance v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    const-string v1, "MSGType_NeedSrv_Immdia_Rsp"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrv_Immdia_Rsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    .line 17
    new-instance v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    const-string v1, "MSGType_NoNeedSrvRsp"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    .line 18
    new-instance v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    const-string v1, "MSGType_Other"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_Other:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    sget-object v1, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrv_Immdia_Rsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_Other:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->$VALUES:[Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->$VALUES:[Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method
