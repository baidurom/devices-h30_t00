.class public final Lcom/huawei/android/pushagent/model/config/SystemConfigMgr$ITEM_NAME;
.super Ljava/lang/Object;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ITEM_NAME"
.end annotation


# static fields
.field public static final FIX_HEARTBEAT:Ljava/lang/String; = "cloudpush_fixHeatBeat"

.field public static final IS_LOG_LOCAL:Ljava/lang/String; = "cloudpush_isLogLocal"

.field public static final IS_NODELAY_CONNECT:Ljava/lang/String; = "cloudpush_isNoDelayConnect"

.field public static final IS_REPORT_LOG:Ljava/lang/String; = "cloudpush_isReportLog"

.field public static final IS_SUPPORT_COLLECT_SOCKET_INFO:Ljava/lang/String; = "cloudpush_isSupportCollectSocketInfo"

.field public static final IS_SUPPORT_UPDATE:Ljava/lang/String; = "cloudpush_isSupportUpdate"

.field public static final PUSH_LOG_LEVEL:Ljava/lang/String; = "cloudpush_pushLogLevel"

.field public static final TRS_ADDR:Ljava/lang/String; = "cloudpush_trsIp"

.field public static final USE_SSL:Ljava/lang/String; = "USE_SSL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
