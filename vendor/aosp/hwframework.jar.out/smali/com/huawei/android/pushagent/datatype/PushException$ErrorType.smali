.class public final enum Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;
.super Ljava/lang/Enum;
.source "PushException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/datatype/PushException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

.field public static final enum Err_Connect:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

.field public static final enum Err_Device:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

.field public static final enum Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

.field public static final enum Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    const-string v1, "Err_unKnown"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 8
    new-instance v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    const-string v1, "Err_Device"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Device:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 9
    new-instance v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    const-string v1, "Err_Connect"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Connect:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 10
    new-instance v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    const-string v1, "Err_Read"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    sget-object v1, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Device:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Connect:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->$VALUES:[Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->$VALUES:[Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    return-object v0
.end method
