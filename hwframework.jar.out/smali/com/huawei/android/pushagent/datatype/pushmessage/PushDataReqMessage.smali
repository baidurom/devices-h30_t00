.class public Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "PushDataReqMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field private mDataLen:I

.field private mMsgData:[B

.field private mMsgId:[B

.field private mNextCMDID:B

.field private mPackageName:[B

.field private mPackageNameLen:I

.field private mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 16
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mNextCMDID:B

    .line 37
    return-void
.end method

.method public static final getID()B
    .locals 1

    .prologue
    .line 33
    const/16 v0, -0x60

    return v0
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
    .line 12
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 13
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    const/16 v5, 0x8

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    .line 124
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    invoke-static {p1, v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 127
    const/16 v5, 0x20

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    .line 128
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    invoke-static {p1, v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 132
    new-array v0, v12, [B

    .line 133
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 134
    invoke-static {v0}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v2

    .line 135
    .local v2, len:I
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push message len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mDataLen:I

    .line 139
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    .line 140
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    invoke-static {p1, v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 141
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push message mMsgData :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-array v4, v12, [B

    .line 149
    .local v4, pkgNameLen:[B
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    aget-byte v5, v4, v10

    if-gez v5, :cond_0

    .line 157
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read first Len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v4, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not valid len, may be next cmdId in Old PushDataReqMessage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    aget-byte v5, v4, v10

    iput-byte v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mNextCMDID:B

    .line 179
    :goto_0
    return-object p0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read msg cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " may be old PushDataReqMessage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 167
    aget-byte v5, v4, v10

    aget-byte v6, v4, v11

    add-int v3, v5, v6

    .line 168
    .local v3, pLen:I
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPackageNameLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-gtz v3, :cond_1

    .line 170
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the package length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is Unavailable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    iput v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    .line 174
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    .line 175
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    invoke-static {p1, v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    goto :goto_0
.end method

.method public encode()[B
    .locals 7

    .prologue
    const/16 v5, 0x7f

    const/4 v3, 0x0

    .line 77
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    if-nez v4, :cond_0

    .line 78
    const-string v4, "PushLog2510"

    const-string v5, "encode error, mMsgId = null"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v3

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    if-nez v4, :cond_1

    .line 82
    const-string v4, "PushLog2510"

    const-string v5, "encode error, reason mToken = null"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encode error,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    if-nez v4, :cond_2

    .line 86
    const-string v4, "PushLog2510"

    const-string v5, "encode error, reason mMsgData = null"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    if-nez v4, :cond_3

    .line 90
    const-string v4, "PushLog2510"

    const-string v5, "encode error, reason mPackage = null"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getCmdID()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    array-length v4, v4

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 100
    const/4 v4, 0x2

    new-array v1, v4, [B

    .line 101
    .local v1, bytePkgLen:[B
    iget v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    if-le v4, v5, :cond_4

    .line 102
    const/4 v4, 0x0

    const/16 v5, 0x7f

    aput-byte v5, v1, v4

    .line 103
    const/4 v4, 0x1

    iget v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    add-int/lit8 v5, v5, -0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 108
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  encode : baos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto/16 :goto_0

    .line 105
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    .line 106
    const/4 v4, 0x1

    iget v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    int-to-byte v5, v5

    aput-byte v5, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mDataLen:I

    return v0
.end method

.method public getMsgData()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    .line 55
    .local v0, temp:[B
    return-object v0
.end method

.method public getMsgId()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    .line 41
    .local v0, temp:[B
    return-object v0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getPackageName()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    .line 63
    .local v0, temp:[B
    return-object v0
.end method

.method public getPackageNameLen()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    return v0
.end method

.method public getToken()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    .line 46
    .local v0, tmp:[B
    return-object v0
.end method

.method public getmNextCMDID()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mNextCMDID:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 184
    const-string v1, "null"

    .line 185
    .local v1, packgeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    if-eqz v3, :cond_0

    .line 188
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageName:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #packgeName:Ljava/lang/String;
    .local v2, packgeName:Ljava/lang/String;
    move-object v1, v2

    .line 193
    .end local v2           #packgeName:Ljava/lang/String;
    .restart local v1       #packgeName:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " cmdId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ",msgId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgId:[B

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ",deviceToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mToken:[B

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ",msgData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mMsgData:[B

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", mPackageLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->mPackageNameLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
