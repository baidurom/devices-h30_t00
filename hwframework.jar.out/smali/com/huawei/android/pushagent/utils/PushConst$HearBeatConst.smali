.class public Lcom/huawei/android/pushagent/utils/PushConst$HearBeatConst;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HearBeatConst"
.end annotation


# static fields
.field public static final DEFAULT_HEARTBEAT_INTERVAL:J = 0x927c0L

.field public static final DEFAULT_MIN_HEARTBEAT_INTERVAL:J = 0x2bf20L

.field public static final HEARTBET_VALID_INTERVAL:J = 0x4d3f6400L

.field public static final INCREASE_STEP_INTERVAL:J = 0x7530L

.field public static final NO_NETWORK_HEARTBEAT_INTERVAL:J = 0x1b7740L

.field public static final STR_HearBeatInterval:Ljava/lang/String; = "HearBeatInterval"

.field public static final STR_HeartBeatDiret:Ljava/lang/String; = "HeartBeatDiret"

.field public static final STR_LastHearBeatTime:Ljava/lang/String; = "LastHearBeatTime"

.field public static final STR_MccMnc:Ljava/lang/String; = "MccMnc"

.field public static final STR_NextHearBeatTime:Ljava/lang/String; = "NextHearBeatTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
