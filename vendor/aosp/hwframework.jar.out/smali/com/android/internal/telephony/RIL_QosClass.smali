.class Lcom/android/internal/telephony/RIL_QosClass;
.super Ljava/lang/Object;
.source "QosSpec.java"


# static fields
.field public static final RIL_QOS_BACKGROUND:I = 0x3

.field public static final RIL_QOS_CONVERSATIONAL:I = 0x0

.field public static final RIL_QOS_INTERACTIVE:I = 0x2

.field public static final RIL_QOS_STREAMING:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 61
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
