.class public Lcom/huawei/device/chrlog/LogInt;
.super Ljava/lang/Object;
.source "LogInt.java"


# instance fields
.field private length:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/device/chrlog/LogInt;->length:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/device/chrlog/LogInt;->value:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/huawei/device/chrlog/LogInt;->length:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/huawei/device/chrlog/LogInt;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 14
    iput p1, p0, Lcom/huawei/device/chrlog/LogInt;->value:I

    .line 15
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/huawei/device/chrlog/LogInt;->value:I

    invoke-static {v0}, Lcom/huawei/device/chrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v0

    return-object v0
.end method
