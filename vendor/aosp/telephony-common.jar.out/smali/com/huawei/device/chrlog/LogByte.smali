.class public Lcom/huawei/device/chrlog/LogByte;
.super Ljava/lang/Object;
.source "LogByte.java"


# instance fields
.field private length:I

.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/device/chrlog/LogByte;->length:I

    .line 27
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/huawei/device/chrlog/LogByte;->value:B

    .line 28
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/huawei/device/chrlog/LogByte;->length:I

    return v0
.end method

.method public getValue()B
    .locals 1

    .prologue
    .line 11
    iget-byte v0, p0, Lcom/huawei/device/chrlog/LogByte;->value:B

    return v0
.end method

.method public setValue(B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 15
    iput-byte p1, p0, Lcom/huawei/device/chrlog/LogByte;->value:B

    .line 16
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/huawei/device/chrlog/LogByte;->value:B

    .line 20
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 31
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 32
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/huawei/device/chrlog/LogByte;->value:B

    aput-byte v2, v0, v1

    .line 33
    return-object v0
.end method
