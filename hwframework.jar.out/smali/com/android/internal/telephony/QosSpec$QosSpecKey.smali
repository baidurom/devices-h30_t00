.class public Lcom/android/internal/telephony/QosSpec$QosSpecKey;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosSpecKey"
.end annotation


# static fields
.field public static final FILTER_DIRECTION:I = 0xa

.field public static final FILTER_INDEX:I = 0x8

.field public static final FILTER_IPV4_DESTINATION_ADDR:I = 0xc

.field public static final FILTER_IPV4_SOURCE_ADDR:I = 0xb

.field public static final FILTER_IPV4_TOS:I = 0xd

.field public static final FILTER_IPV4_TOS_MASK:I = 0xe

.field public static final FILTER_IPV6_DESTINATION_ADDR:I = 0x19

.field public static final FILTER_IPV6_FLOW_LABEL:I = 0x17

.field public static final FILTER_IPV6_SOURCE_ADDR:I = 0x18

.field public static final FILTER_IPV6_TRAFFIC_CLASS:I = 0x1a

.field public static final FILTER_IPVERSION:I = 0x9

.field public static final FILTER_TCP_DESTINATION_PORT_RANGE:I = 0x12

.field public static final FILTER_TCP_DESTINATION_PORT_START:I = 0x11

.field public static final FILTER_TCP_SOURCE_PORT_RANGE:I = 0x10

.field public static final FILTER_TCP_SOURCE_PORT_START:I = 0xf

.field public static final FILTER_UDP_DESTINATION_PORT_RANGE:I = 0x16

.field public static final FILTER_UDP_DESTINATION_PORT_START:I = 0x15

.field public static final FILTER_UDP_SOURCE_PORT_RANGE:I = 0x14

.field public static final FILTER_UDP_SOURCE_PORT_START:I = 0x13

.field public static final FLOW_3GPP2_PRIORITY:I = 0x7

.field public static final FLOW_3GPP2_PROFILE_ID:I = 0x6

.field public static final FLOW_DATA_RATE_MAX:I = 0x4

.field public static final FLOW_DATA_RATE_MIN:I = 0x3

.field public static final FLOW_DIRECTION:I = 0x1

.field public static final FLOW_LATENCY:I = 0x5

.field public static final FLOW_TRAFFIC_CLASS:I = 0x2

.field public static final SPEC_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 290
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValid(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 282
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
