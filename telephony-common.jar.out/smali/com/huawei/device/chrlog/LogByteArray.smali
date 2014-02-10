.class public Lcom/huawei/device/chrlog/LogByteArray;
.super Ljava/lang/Object;
.source "LogByteArray.java"


# instance fields
.field private length:I

.field private value:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/huawei/device/chrlog/LogByteArray;->length:I

    .line 24
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogByteArray;->value:[B

    .line 25
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/huawei/device/chrlog/LogByteArray;->length:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogByteArray;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public setValue([B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogByteArray;->value:[B

    .line 20
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogByteArray;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
