.class public Lcom/huawei/android/pushagent/utils/PushIntents;
.super Ljava/lang/Object;
.source "PushIntents.java"


# static fields
.field public static final ACTION_AD_EVENT:Ljava/lang/String; = "com.huawei.android.push.intent.SELFSHOW"

.field public static final ACTION_CHANNEL_CLOSED:Ljava/lang/String; = "com.huawei.android.push.intent.CHANNEL_CLOSED"

.field public static final ACTION_CHANNEL_REQ_CLOSED:Ljava/lang/String; = "com.huawei.android.push.intent.CHANNEL_REQ_CLOSED"

.field public static final ACTION_CLIENT_REGISTER:Ljava/lang/String; = "com.huawei.android.push.intent.REGISTER"

.field public static final ACTION_CLIENT_REGISTRATION:Ljava/lang/String; = "com.huawei.android.push.intent.REGISTRATION"

.field public static final ACTION_CLIENT_UNREGISTER:Ljava/lang/String; = "com.huawei.android.push.intent.UNREGISTER"

.field public static final ACTION_CONNECTED:Ljava/lang/String; = "com.huawei.android.push.intent.CONNECTED"

.field public static final ACTION_CONNECTING:Ljava/lang/String; = "com.huawei.android.push.intent.CONNECTING"

.field public static final ACTION_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_CONNECT_PUSHSRV:Ljava/lang/String; = "com.huawei.action.CONNECT_PUSHSRV"

.field public static final ACTION_DISPKG_NOT_EXIT_EVENT_ID:Ljava/lang/String; = "5"

.field public static final ACTION_FORCE_CONNECT_POLLINGSRV:Ljava/lang/String; = "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

.field public static final ACTION_FORCE_CONNECT_PUSHSRV:Ljava/lang/String; = "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

.field public static final ACTION_GET_PUSH_FILES:Ljava/lang/String; = "com.huawei.android.push.intent.GET_PUSH_FILES"

.field public static final ACTION_GET_PUSH_FILES_RSP:Ljava/lang/String; = "com.huawei.android.push.intent.GET_PUSH_FILES_RSP"

.field public static final ACTION_GET_PUSH_STATE:Ljava/lang/String; = "com.huawei.android.push.intent.GET_PUSH_STATE"

.field public static final ACTION_HEARTBEAT_INTERVAL_FOUND:Ljava/lang/String; = "com.huawei.android.push.intent.heart.interval.found"

.field public static final ACTION_HEARTBEAT_RANGE_CHANGE:Ljava/lang/String; = "com.huawei.android.push.intent.HEARTBEAT_RANGE_CHANGE"

.field public static final ACTION_HEARTBEAT_REQ_TIME_ARRIVED:Ljava/lang/String; = "com.huawei.android.push.intent.HEARTBEAT_REQ"

.field public static final ACTION_HEARTBEAT_RSP_TIMEOUT:Ljava/lang/String; = "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

.field public static final ACTION_HEARTBEAT_VALID_ARRIVED:Ljava/lang/String; = "com.huawei.android.push.intent.HEARTBEAT_VALID_ARRIVED"

.field public static final ACTION_INNER_START_SERVICE:Ljava/lang/String; = "com.huawei.android.push.intent.inner.START_SERVICE"

.field public static final ACTION_INNER_STOP_SERVICE:Ljava/lang/String; = "com.huawei.android.push.intent.inner.STOP_SERVICE"

.field public static final ACTION_MSG_BROAD_TO_APP:Ljava/lang/String; = "com.huawei.android.push.intent.MSG_BROAD_TO_APP"

.field public static final ACTION_MSG_RECEIVED:Ljava/lang/String; = "com.huawei.android.push.intent.MSG_RECEIVED"

.field public static final ACTION_MSG_SENT:Ljava/lang/String; = "com.huawei.android.push.intent.MSG_SENT"

.field public static final ACTION_OLD_SELF_SHOW:Ljava/lang/String; = "com.huawei.android.push.intent.AD_INFO"

.field public static final ACTION_PUSH_INNER_REGISTER:Ljava/lang/String; = "com.huawei.android.push.intent.INNER_REGISTER"

.field public static final ACTION_PUSH_INTENT:Ljava/lang/String; = "com.huawei.intent.action.PUSH"

.field public static final ACTION_PUSH_OFF:Ljava/lang/String; = "com.huawei.intent.action.PUSH_OFF"

.field public static final ACTION_PUSH_ON:Ljava/lang/String; = "com.huawei.intent.action.PUSH_ON"

.field public static final ACTION_PUSH_PLUGIN:Ljava/lang/String; = "com.huawei.android.push.PLUGIN"

.field public static final ACTION_PUSH_PLUGIN_RESPONSE:Ljava/lang/String; = "com.huawei.android.push.plugin.RESPONSE"

.field public static final ACTION_PUSH_SETTING:Ljava/lang/String; = "com.huawei.intent.action.PUSH_SETTINGS"

.field public static final ACTION_PUSH_SETTINGS_PROMPT:Ljava/lang/String; = "com.huawei.intent.action.PUSH_SETTINGS_PROMPT"

.field public static final ACTION_PUSH_STATE:Ljava/lang/String; = "com.huawei.intent.action.PUSH_STATE"

.field public static final ACTION_REFRESH_CONNECT:Ljava/lang/String; = "com.huawei.android.push.intent.REFRESH_PUSH_CHANNEL"

.field public static final ACTION_SECRET_CODE:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final ACTION_SOCKET_EVENT:Ljava/lang/String; = "com.huawei.android.push.intent.SOCKET_INFO"

.field public static final ACTION_SWITH_PUSH_CONFIG:Ljava/lang/String; = "com.huawei.android.push.SWITCH"

.field public static final ACTION_SWITH_PUSH_CONFIG_RSP:Ljava/lang/String; = "com.huawei.android.push.config.RSP"

.field public static final ACTION_SWITH_PUSH_QUERY:Ljava/lang/String; = "com.huawei.android.push.query"

.field public static final ACTION_TRS_QUERYING:Ljava/lang/String; = "com.huawei.android.push.intent.trs.querying"

.field public static final ACTION_TRS_QUERY_FAILED:Ljava/lang/String; = "com.huawei.android.push.intent.TRS_QUERY_FAILED"

.field public static final ACTION_TRS_QUERY_SUCCESS:Ljava/lang/String; = "com.huawei.android.push.intent.TRS_QUERY_SUCCESS"

.field public static final ACTION_UPDATE_CYCLE_ARRIVED:Ljava/lang/String; = "com.huawei.android.push.intent.UPDATE_CYCLE_ARRVIED"

.field public static final EXTRA_AD_EVENT_INFO:Ljava/lang/String; = "ad_event_info"

.field public static final EXTRA_AD_EVENT_TOKEN:Ljava/lang/String; = "ad_event_token"

.field public static final EXTRA_CFG_NAME:Ljava/lang/String; = "config_name"

.field public static final EXTRA_CFG_VALUE:Ljava/lang/String; = "config_value"

.field public static final EXTRA_CHNNEL_ENTITY:Ljava/lang/String; = "channelEntity"

.field public static final EXTRA_CLIENT_IP:Ljava/lang/String; = "client_ip"

.field public static final EXTRA_CLIENT_PORT:Ljava/lang/String; = "client_port"

.field public static final EXTRA_CONNECT_MODE:Ljava/lang/String; = "connect_mode"

.field public static final EXTRA_CONNECT_PUSHSRV_TIMES:Ljava/lang/String; = "connect_times"

.field public static final EXTRA_CONNECT_TIME:Ljava/lang/String; = "connect_time"

.field public static final EXTRA_CONNECT_TIMES:Ljava/lang/String; = "connect_times"

.field public static final EXTRA_CUR_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat_interval"

.field public static final EXTRA_GET_PUSH_FILE_CONTENTS:Ljava/lang/String; = "file_contents"

.field public static final EXTRA_GET_PUSH_FILE_NAMES:Ljava/lang/String; = "file_names"

.field public static final EXTRA_Get_PUSH_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final EXTRA_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat_interval"

.field public static final EXTRA_INTENT_TYPE:Ljava/lang/String; = "EXTRA_INTENT_TYPE"

.field public static final EXTRA_MSG_APP_NAME:Ljava/lang/String; = "appName"

.field public static final EXTRA_PUSH_EXCEPTION:Ljava/lang/String; = "push_exception"

.field public static final EXTRA_PUSH_MSG:Ljava/lang/String; = "push_msg"

.field public static final EXTRA_REMOTE_PACKAGE_NAME:Ljava/lang/String; = "Remote_Package_Name"

.field public static final EXTRA_SECRET_CODE:Ljava/lang/String; = "android_secret_code"

.field public static final EXTRA_SELF_EVENT_CLASSNAME:Ljava/lang/String; = "com.huawei.android.pushselfshow.SelfShowReceiver"

.field public static final EXTRA_SELF_EVENT_INFO:Ljava/lang/String; = "selfshow_info"

.field public static final EXTRA_SELF_EVENT_TOKEN:Ljava/lang/String; = "selfshow_token"

.field public static final EXTRA_SELF_SHOW_EVENT_ID:Ljava/lang/String; = "selfshow_event_id"

.field public static final EXTRA_SERVER_IP:Ljava/lang/String; = "server_ip"

.field public static final EXTRA_SERVER_PORT:Ljava/lang/String; = "server_port"

.field public static final EXTRA_SOCKET_ADD_INFO:Ljava/lang/String; = "socket_add_info"

.field public static final EXTRA_SOCKET_EVENT_TYPE:Ljava/lang/String; = "socket_event_type"

.field public static final EXTRA_SOCKET_EXCEPTION:Ljava/lang/String; = "socket_exception"

.field public static final EXTRA_SOCKET_INFO:Ljava/lang/String; = "socket_info"

.field public static final EXTRA_SOCKET_NEXT_CONNECT_TIME:Ljava/lang/String; = "socket_next_connect_time"

.field public static final EXTRA_TIMER_PUSHMSG:Ljava/lang/String; = "push_msg"

.field public static final EXTRA_TIMER_REASON:Ljava/lang/String; = "timer_reason"

.field public static final EXTRA_TRS_RESULT:Ljava/lang/String; = "trs_result"

.field public static final EXTRA_TRS_URL:Ljava/lang/String; = "trs_url"

.field private static final action:[Ljava/lang/String;

.field private static final actionSecret:[Ljava/lang/String;

.field private static final eventActions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.huawei.android.push.intent.UNREGISTER"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.TIME_SET"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "com.huawei.android.push.intent.inner.START_SERVICE"

    aput-object v1, v0, v6

    const-string v1, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.huawei.intent.action.PUSH_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.huawei.action.CONNECT_PUSHSRV"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.huawei.android.push.intent.trs.querying"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.huawei.android.push.intent.HEARTBEAT_RANGE_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.huawei.android.push.SWITCH"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.huawei.android.push.intent.GET_PUSH_FILES"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.huawei.android.push.intent.GET_PUSH_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/pushagent/utils/PushIntents;->action:[Ljava/lang/String;

    .line 161
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v1, v0, v3

    const-string v1, "com.huawei.android.push.intent.REFRESH_PUSH_CHANNEL"

    aput-object v1, v0, v4

    const-string v1, "com.huawei.android.push.intent.REGISTER"

    aput-object v1, v0, v5

    const-string v1, "com.huawei.intent.action.PUSH"

    aput-object v1, v0, v6

    const-string v1, "com.huawei.intent.action.PUSH_ON"

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/android/pushagent/utils/PushIntents;->eventActions:[Ljava/lang/String;

    .line 169
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    aput-object v1, v0, v3

    const-string v1, "android_secret_code"

    aput-object v1, v0, v4

    const-string v1, "787424368"

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/android/pushagent/utils/PushIntents;->actionSecret:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->action:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 177
    .local v0, ret:[Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->action:[Ljava/lang/String;

    sget-object v2, Lcom/huawei/android/pushagent/utils/PushIntents;->action:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method public static getActionSecret()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->actionSecret:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 183
    .local v0, ret:[Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->actionSecret:[Ljava/lang/String;

    sget-object v2, Lcom/huawei/android/pushagent/utils/PushIntents;->actionSecret:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    return-object v0
.end method

.method public static getEventAction()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->eventActions:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 189
    .local v0, ret:[Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/pushagent/utils/PushIntents;->eventActions:[Ljava/lang/String;

    sget-object v2, Lcom/huawei/android/pushagent/utils/PushIntents;->eventActions:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v0
.end method
