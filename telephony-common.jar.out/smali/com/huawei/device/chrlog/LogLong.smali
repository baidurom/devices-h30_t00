.class public Lcom/huawei/device/chrlog/LogLong;
.super Ljava/lang/Object;
.source "LogLong.java"


# instance fields
.field private length:I

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/device/chrlog/LogLong;->length:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/device/chrlog/LogLong;->value:J

    .line 27
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/huawei/device/chrlog/LogLong;->length:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/huawei/device/chrlog/LogLong;->value:J

    return-wide v0
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 18
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/device/chrlog/LogLong;->value:J

    .line 19
    return-void
.end method

.method public setValue(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/huawei/device/chrlog/LogLong;->value:J

    .line 15
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/huawei/device/chrlog/LogLong;->value:J

    invoke-static {v0, v1}, Lcom/huawei/device/chrlog/ByteConvert;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method
