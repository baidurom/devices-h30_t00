.class public abstract Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Lcom/huawei/android/pushagent/datatype/IPushMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field protected mCmdId:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->mCmdId:B

    .line 31
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "cmdId"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->mCmdId:B

    .line 33
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->setCmdId(B)V

    .line 34
    return-void
.end method

.method public static fullRead(Ljava/io/InputStream;[B)V
    .locals 4
    .parameter "is"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, readLen:I
    const/4 v0, -0x1

    .line 50
    .local v0, len:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 51
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 54
    new-instance v2, Ljava/io/IOException;

    const-string v3, "read -1 reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/IPushMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public abstract decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encode()[B
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public getCmdID()B
    .locals 1

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->mCmdId:B

    return v0
.end method

.method public getHexCmdID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->mCmdId:B

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
.end method

.method public setCmdId(B)V
    .locals 0
    .parameter "cmdId"

    .prologue
    .line 44
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->mCmdId:B

    .line 45
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
