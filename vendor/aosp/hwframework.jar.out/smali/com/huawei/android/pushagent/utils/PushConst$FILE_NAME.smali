.class public Lcom/huawei/android/pushagent/utils/PushConst$FILE_NAME;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_NAME"
.end annotation


# static fields
.field public static final CONNECT_CONTROL_STORE_FILE:Ljava/lang/String; = "PushConnectControl"

.field public static final DEVICE_INFO:Ljava/lang/String; = "device_info"

.field public static final OLD_HEARTBEAT_CFG:Ljava/lang/String; = "HeartBeatCfg"

.field public static final OLD_ROUTINFO:Ljava/lang/String; = "RouteInfo"

.field public static final PUSH_CLIENT_INFO:Ljava/lang/String; = "pclient_info"

.field public static final PUSH_CLIENT_REQUEST_INFO:Ljava/lang/String; = "pclient_request_info"

.field public static final PUSH_CLIENT_UNRIST_INFO:Ljava/lang/String; = "pclient_unRegist_info"

.field public static final PUSH_CONFIG:Ljava/lang/String; = "pushConfig"

.field public static final PushAppNotifiCfg:Ljava/lang/String; = "PushAppNotifiCfg"

.field public static final PushRoutInfo:Ljava/lang/String; = "PushRouteInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
