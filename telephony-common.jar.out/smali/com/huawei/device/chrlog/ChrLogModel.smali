.class public Lcom/huawei/device/chrlog/ChrLogModel;
.super Ljava/lang/Object;
.source "ChrLogModel.java"


# instance fields
.field public chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

.field public chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

.field public logEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/device/chrlog/ChrLogBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/huawei/device/chrlog/CSegFILEHEAD;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegFILEHEAD;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 28
    new-instance v0, Lcom/huawei/device/chrlog/CSegCOMHEAD;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegCOMHEAD;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 6

    .prologue
    .line 37
    iget-object v4, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/CSegFILEHEAD;->getTotalBytes()I

    move-result v4

    iget-object v5, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    invoke-virtual {v5}, Lcom/huawei/device/chrlog/CSegCOMHEAD;->getTotalBytes()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x2

    .line 42
    .local v2, length:I
    iget-object v4, p0, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/device/chrlog/ChrLogBaseModel;

    .line 43
    .local v3, logEvent:Lcom/huawei/device/chrlog/ChrLogBaseModel;
    invoke-virtual {v3}, Lcom/huawei/device/chrlog/ChrLogBaseModel;->getTotalBytes()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    .line 46
    .end local v3           #logEvent:Lcom/huawei/device/chrlog/ChrLogBaseModel;
    :cond_0
    new-array v4, v2, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    .local v0, bytebuf:Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/CSegFILEHEAD;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v4, p0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/CSegCOMHEAD;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v4, p0, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/device/chrlog/ChrLogBaseModel;

    .line 52
    .restart local v3       #logEvent:Lcom/huawei/device/chrlog/ChrLogBaseModel;
    invoke-virtual {v3}, Lcom/huawei/device/chrlog/ChrLogBaseModel;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 54
    .end local v3           #logEvent:Lcom/huawei/device/chrlog/ChrLogBaseModel;
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method
