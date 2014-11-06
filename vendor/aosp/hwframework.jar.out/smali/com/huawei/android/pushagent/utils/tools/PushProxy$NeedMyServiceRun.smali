.class final enum Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;
.super Ljava/lang/Enum;
.source "PushProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/tools/PushProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NeedMyServiceRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

.field public static final enum No:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

.field public static final enum Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

.field public static final enum Yes:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    const-string v1, "Yes"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Yes:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    const-string v1, "No"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->No:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    sget-object v1, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Unknow:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->Yes:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->No:Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->$VALUES:[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->$VALUES:[Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/utils/tools/PushProxy$NeedMyServiceRun;

    return-object v0
.end method
