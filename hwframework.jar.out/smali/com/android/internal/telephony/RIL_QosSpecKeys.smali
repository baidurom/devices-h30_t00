.class Lcom/android/internal/telephony/RIL_QosSpecKeys;
.super Ljava/lang/Object;
.source "QosSpec.java"


# static fields
.field public static final RIL_QOS_FILTER_DIRECTION:I = 0xa

.field public static final RIL_QOS_FILTER_INDEX:I = 0x8

.field public static final RIL_QOS_FILTER_IPV4_DESTINATION_ADDR:I = 0xc

.field public static final RIL_QOS_FILTER_IPV4_SOURCE_ADDR:I = 0xb

.field public static final RIL_QOS_FILTER_IPV4_TOS:I = 0xd

.field public static final RIL_QOS_FILTER_IPV4_TOS_MASK:I = 0xe

.field public static final RIL_QOS_FILTER_IPV6_DESTINATION_ADDR:I = 0x19

.field public static final RIL_QOS_FILTER_IPV6_FLOW_LABEL:I = 0x1b

.field public static final RIL_QOS_FILTER_IPV6_SOURCE_ADDR:I = 0x18

.field public static final RIL_QOS_FILTER_IPV6_TRAFFIC_CLASS:I = 0x1a

.field public static final RIL_QOS_FILTER_IPVERSION:I = 0x9

.field public static final RIL_QOS_FILTER_IP_NEXT_HEADER_PROTOCOL:I = 0x17

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_RANGE:I = 0x12

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_START:I = 0x11

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_RANGE:I = 0x10

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_START:I = 0xf

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_RANGE:I = 0x16

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_START:I = 0x15

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_RANGE:I = 0x14

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_START:I = 0x13

.field public static final RIL_QOS_FLOW_3GPP2_PRIORITY:I = 0x7

.field public static final RIL_QOS_FLOW_3GPP2_PROFILE_ID:I = 0x6

.field public static final RIL_QOS_FLOW_DATA_RATE_MAX:I = 0x4

.field public static final RIL_QOS_FLOW_DATA_RATE_MIN:I = 0x3

.field public static final RIL_QOS_FLOW_DIRECTION:I = 0x1

.field public static final RIL_QOS_FLOW_LATENCY:I = 0x5

.field public static final RIL_QOS_FLOW_TRAFFIC_CLASS:I = 0x2

.field public static final RIL_QOS_SPEC_INDEX:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 134
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
