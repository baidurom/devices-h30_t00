.class public Lcom/huawei/android/pushagent/utils/PushConst$TRS;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/utils/PushConst$TRS$RetInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_BELONGID:Ljava/lang/String; = "-1"

.field public static final FIND_HEAT_BEAT_TO_LARGE:I = 0x1

.field public static final FIND_HEAT_BEAT_TO_SMALL:I = 0x0

.field public static final MS_TIME_INTERVAL:J = 0x7530L

.field public static final RECEIVE_MESSAGE_FAILED_TO_RECONNECT:J = 0x3a98L

.field public static final RETRY_TRS_MAX:I = 0x2

.field public static final TIME_HEARTBEAT_MOBILE_STEP:J = 0x493e0L

.field public static final TIME_HEARTBEAT_WIFI_MAX:J = 0x2f9b80L

.field public static final TIME_HEARTBEAT_WIFI_MIN:J = 0x668a0L

.field public static final TIME_HEARTBEAT_WIFI_STEP:J = 0xea60L

.field public static final TIME_Query_TRS_TIME_OUT:J = 0x493e0L

.field public static final TIME_THRESHOLD:J = 0x15f90L

.field public static final TIME_TRS_FIRST_RECONNECT_THRESHOLD:J = 0x493e0L

.field public static final TIME_TRS_RECONNECT_THRESHOLD_DEV_REG_FAIL:J = 0x493e0L

.field public static final TIME_TRS_REQUERY_CERT_EXCEPTION:J = 0x5265c00L

.field public static final TRS_BELONG_ID:Ljava/lang/String; = "BelongId"

.field public static final TRS_IP:Ljava/lang/String; = "ip"

.field public static final TRS_PORT:Ljava/lang/String; = "port"

.field public static final TRS_TIME:Ljava/lang/String; = "time"

.field public static final defalutTrsRequeryInterval:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method
