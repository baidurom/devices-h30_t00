.class public Lcom/huawei/android/pushagent/model/config/SystemConfigMgr$SystemStatus;
.super Ljava/lang/Object;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemStatus"
.end annotation


# static fields
.field public static final STR_ARRAY_NET_EVENT_TIME:Ljava/lang/String; = "cloudpush_arrayOfNetEventTime"

.field public static final STR_LAST_CONNECT_PUSHSRV_METHOD_INDEX:Ljava/lang/String; = "lastConnectPushSrvMethodIdx"

.field public static final STR_LAST_CONNECT_STATUS:Ljava/lang/String; = "cloudpush_ConnectStatus"

.field public static final STR_LAST_CONNECT_SUCC_TIME:Ljava/lang/String; = "lastcontectsucc_time"

.field public static final STR_LAST_CONNECT_TIME:Ljava/lang/String; = "cloudpush_on"

.field public static final STR_LAST_ConnectPushSevTime:Ljava/lang/String; = "lastConnectPushSevTime"

.field public static final STR_LAST_DISCONNECT_TIME:Ljava/lang/String; = "cloudpush_off"

.field public static final STR_LAST_NET_CONNECT:Ljava/lang/String; = "cloudpush_net_on"

.field public static final STR_LAST_NET_DISCONNECT:Ljava/lang/String; = "cloudpush_net_off"

.field public static final STR_LAST_QUERYTRS_SUCC_TIME:Ljava/lang/String; = "lastQueryTRSsucc_time"

.field public static final STR_LAST_QUERYTRS_TIME:Ljava/lang/String; = "lastQueryTRSTime"

.field public static final STR_LAST_SCREEN_OFF:Ljava/lang/String; = "cloudpush_screen_off"

.field public static final STR_LAST_SCREEN_ON:Ljava/lang/String; = "cloudpush_screen_on"

.field public static final STR_QUERYTRS_TIMES:Ljava/lang/String; = "queryTrsTimes"

.field public static final STR_RUN_TIME_LESS_TIMES:Ljava/lang/String; = "run_time_less_times"

.field public static final STR_TryConnectPushSevTimes:Ljava/lang/String; = "tryConnectPushSevTimes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
