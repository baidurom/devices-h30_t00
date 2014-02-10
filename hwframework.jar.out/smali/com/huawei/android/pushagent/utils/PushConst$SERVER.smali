.class public Lcom/huawei/android/pushagent/utils/PushConst$SERVER;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVER"
.end annotation


# static fields
.field public static final DEVICETOKEN:Ljava/lang/String; = "device_token"

.field public static final HEARTBEAT_RSP_TIME_OUT:J = 0x2710L

.field public static final MAX_DEVICEID_LEN:I = 0x10

.field public static final MAX_NET_EVENT_NUM:I = 0x10

.field public static final MSG_RSP_TIME_OUT:J = 0xea60L

.field public static final PKGNAME:Ljava/lang/String; = "pkg_name"

.field public static final RESULT_FAIL_REGISTER:I = 0x1

.field public static final RESULT_OK_REGISTER:I = 0x0

.field public static final RETRY_CONNECTION_MAX:I = 0x3

.field public static final RETRY_FIRST:I = 0x1

.field public static final RETRY_MAX:I = 0x1

.field public static final RETRY_SECOND:I = 0x2

.field public static final RETRY_THIRD:I = 0x3

.field public static final START_SERVICE_TIME_OUT:J = 0x2710L

.field public static final TYPE_FIRSTCONNCT:I = 0x1

.field public static final TYPE_RECONNCT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
