.class public Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "NewDeviceRegisterReqMessage.java"


# instance fields
.field private mAgentVersion:I

.field private mCurrentConnectTime:J

.field private mCurrentTime:J

.field private mDeviceId:Ljava/lang/String;

.field private mLastDisconnectTime:J

.field private mNetEventCount:I

.field private mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

.field private mNetworkType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BIJJJI[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;)V
    .locals 11
    .parameter "devicdId"
    .parameter "netType"
    .parameter "agentVersion"
    .parameter "lastDisconnectTime"
    .parameter "currentConnectTime"
    .parameter "currentTime"
    .parameter "netEventAccount"
    .parameter "netEventInfoList"

    .prologue
    .line 43
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->getID()B

    move-result v7

    invoke-direct {p0, v7}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 22
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 23
    const/4 v7, -0x1

    iput-byte v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    .line 44
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 45
    iput-byte p2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    .line 46
    iput p3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mAgentVersion:I

    .line 47
    iput-wide p4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mLastDisconnectTime:J

    .line 48
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentConnectTime:J

    .line 49
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentTime:J

    .line 50
    move/from16 v0, p10

    iput v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    .line 52
    if-eqz p11, :cond_0

    move-object/from16 v0, p11

    array-length v7, v0

    if-lez v7, :cond_0

    .line 54
    move-object/from16 v0, p11

    array-length v7, v0

    new-array v7, v7, [Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    iput-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .line 55
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    const/4 v9, 0x0

    move-object/from16 v0, p11

    array-length v10, v0

    move-object/from16 v0, p11

    invoke-static {v0, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v5, logBuf:Ljava/lang/StringBuffer;
    const-string v7, "mDeviceId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ";mAgentVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mAgentVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "mLastDisconnectTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mLastDisconnectTime:J

    const-string v10, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v8, v9, v10}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "mCurrentConnectTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentConnectTime:J

    const-string v10, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v8, v9, v10}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "mCurrentTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentTime:J

    const-string v10, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v8, v9, v10}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ";mNetEventAccount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ";mNetEventInfoList=;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    array-length v7, v7

    if-lez v7, :cond_1

    .line 73
    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .local v2, arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v2, v3

    .line 74
    .local v6, ni:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v2           #arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #ni:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    :cond_1
    const-string v7, "PushLog2510"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 32
    const/16 v0, -0x22

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
    .line 20
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 11
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 116
    const/16 v6, 0x10

    new-array v1, v6, [B

    .line 117
    .local v1, bReceived:[B
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 118
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 120
    new-array v1, v8, [B

    .line 121
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 122
    aget-byte v6, v1, v10

    iput-byte v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    .line 124
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 125
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 126
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v6

    iput v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mAgentVersion:I

    .line 128
    new-array v1, v9, [B

    .line 129
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 130
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteToLong([B)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mLastDisconnectTime:J

    .line 132
    new-array v1, v9, [B

    .line 133
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 134
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteToLong([B)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentConnectTime:J

    .line 136
    new-array v1, v9, [B

    .line 137
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 138
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteToLong([B)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentTime:J

    .line 140
    new-array v1, v8, [B

    .line 141
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 142
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v6

    iput v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    .line 144
    iget v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    and-int/lit8 v3, v6, 0x7f

    .line 145
    .local v3, iRealEventCount:I
    if-lez v3, :cond_0

    .line 146
    new-array v6, v3, [Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    iput-object v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .line 148
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .local v0, arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 149
    .local v5, ne:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    new-array v1, v9, [B

    .line 150
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 151
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteToLong([B)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEventTime(J)V

    .line 153
    new-array v1, v8, [B

    .line 154
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 155
    aget-byte v6, v1, v10

    invoke-virtual {v5, v6}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetType(B)V

    .line 157
    new-array v1, v8, [B

    .line 158
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 159
    aget-byte v6, v1, v10

    invoke-virtual {v5, v6}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEvent(B)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v0           #arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #ne:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    :cond_0
    return-object p0
.end method

.method public encode()[B
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encode error, reason mDeviceId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v6

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->getCmdID()B

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    iget-byte v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    iget v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mAgentVersion:I

    invoke-static {v7}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-wide v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mLastDisconnectTime:J

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->longToByteArray(J)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    iget-wide v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentConnectTime:J

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->longToByteArray(J)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    iget-wide v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentTime:J

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->longToByteArray(J)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    iget v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    int-to-byte v7, v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    array-length v7, v7

    if-lez v7, :cond_1

    .line 98
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .local v0, arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 100
    .local v5, ne:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    invoke-virtual {v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->getNetEventTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->longToByteArray(J)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 102
    invoke-virtual {v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->getNetType()B

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    invoke-virtual {v5}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->getNetEvent()B

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v0           #arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ne:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 108
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 109
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encode error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 172
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, " cmdId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mDeviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mNetworkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetworkType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mAgentVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mAgentVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mLastDisconnectTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mLastDisconnectTime:J

    const-string v8, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v6, v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mCurrentConnectTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentConnectTime:J

    const-string v8, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v6, v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mCurrentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mCurrentTime:J

    const-string v8, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v6, v7, v8}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mNetEventAccount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 187
    .local v4, stringBuffer:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 188
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->mNetEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .local v0, arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 189
    .local v3, ni:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v0           #arr$:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ni:Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
