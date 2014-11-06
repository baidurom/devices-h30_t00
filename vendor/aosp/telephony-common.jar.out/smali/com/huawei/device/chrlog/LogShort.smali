.class public Lcom/huawei/device/chrlog/LogShort;
.super Ljava/lang/Object;
.source "LogShort.java"


# instance fields
.field private length:I

.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/device/chrlog/LogShort;->length:I

    .line 27
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/huawei/device/chrlog/LogShort;->value:S

    .line 28
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/huawei/device/chrlog/LogShort;->length:I

    return v0
.end method

.method public getValue()S
    .locals 1

    .prologue
    .line 11
    iget-short v0, p0, Lcom/huawei/device/chrlog/LogShort;->value:S

    return v0
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    int-to-short v0, p1

    iput-short v0, p0, Lcom/huawei/device/chrlog/LogShort;->value:S

    .line 20
    return-void
.end method

.method public setValue(S)V
    .locals 0
    .parameter "value"

    .prologue
    .line 15
    iput-short p1, p0, Lcom/huawei/device/chrlog/LogShort;->value:S

    .line 16
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 32
    iget-short v0, p0, Lcom/huawei/device/chrlog/LogShort;->value:S

    invoke-static {v0}, Lcom/huawei/device/chrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v0

    return-object v0
.end method
