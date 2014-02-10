.class public Lcom/huawei/android/pushagent/utils/PushConst$ACTION;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTION"
.end annotation


# static fields
.field public static final ACTION_CLIENT_UNREGISTER:Ljava/lang/String; = "com.huawei.android.push.intent.UNREGISTER"

.field public static final ACTION_PUSH_MESSAGE:Ljava/lang/String; = "com.huawei.android.push.intent.RECEIVE"

.field public static final ACTION_RSP_FROM_SERVER:Ljava/lang/String; = "com.huawei.android.push.intent.RESPONSE"

.field public static final All_PUSH_PKGNAME:Ljava/lang/String; = "all"

.field public static final INDEPENDENT_ACCOUNT_PKGNAME:Ljava/lang/String; = "com.huawei.accountagent"

.field public static final INDEPENDENT_PUSH_PKGNAME:Ljava/lang/String; = "com.huawei.android.pushagent"

.field public static final TIME_OUT_For_HEARTBEAT_Rsp:Ljava/lang/String; = "timeOutForHeartBeatRsp"

.field public static final TIME_OUT_WAIT_MSG_RSP:Ljava/lang/String; = "timeOutWaitPushSrvRsp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
