.class public abstract Lcom/huawei/lcagent/client/ILogCollect$Stub;
.super Landroid/os/Binder;
.source "ILogCollect.java"

# interfaces
.implements Lcom/huawei/lcagent/client/ILogCollect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/lcagent/client/ILogCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/lcagent/client/ILogCollect$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.lcagent.client.ILogCollect"

.field static final TRANSACTION_allowUploadAlways:I = 0xa

.field static final TRANSACTION_allowUploadInMobileNetwork:I = 0x9

.field static final TRANSACTION_captureLogMetric:I = 0x6

.field static final TRANSACTION_clearLogMetric:I = 0x7

.field static final TRANSACTION_configure:I = 0xe

.field static final TRANSACTION_configureUserType:I = 0xb

.field static final TRANSACTION_feedbackUploadResult:I = 0x8

.field static final TRANSACTION_forceUpload:I = 0xd

.field static final TRANSACTION_getUserType:I = 0xc

.field static final TRANSACTION_setMetricCommonHeader:I = 0x2

.field static final TRANSACTION_setMetricStoargeHeader:I = 0x1

.field static final TRANSACTION_setMetricStoargeTail:I = 0x3

.field static final TRANSACTION_shouldSubmitMetric:I = 0x5

.field static final TRANSACTION_submitMetric:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/lcagent/client/ILogCollect;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.huawei.lcagent.client.ILogCollect"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/lcagent/client/ILogCollect;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/lcagent/client/ILogCollect$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/lcagent/client/ILogCollect$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 53
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->setMetricStoargeHeader(I[BI)I

    move-result v5

    .line 55
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v5           #_result:I
    :sswitch_2
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 67
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->setMetricCommonHeader(I[BI)I

    move-result v5

    .line 69
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v5           #_result:I
    :sswitch_3
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 81
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->setMetricStoargeTail(I[BI)I

    move-result v5

    .line 83
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v5           #_result:I
    :sswitch_4
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 97
    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 98
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->submitMetric(II[BI)I

    move-result v5

    .line 99
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:I
    .end local v5           #_result:I
    :sswitch_5
    const-string v8, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->shouldSubmitMetric(II)Z

    move-result v5

    .line 111
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v5           #_result:Z
    :sswitch_6
    const-string v8, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->captureLogMetric(I)Lcom/huawei/lcagent/client/LogMetricInfo;

    move-result-object v5

    .line 121
    .local v5, _result:Lcom/huawei/lcagent/client/LogMetricInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {v5, p3, v7}, Lcom/huawei/lcagent/client/LogMetricInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 127
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:I
    .end local v5           #_result:Lcom/huawei/lcagent/client/LogMetricInfo;
    :sswitch_7
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 136
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->clearLogMetric(J)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:J
    :sswitch_8
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 146
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->feedbackUploadResult(JI)I

    move-result v5

    .line 148
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v5           #_result:I
    :sswitch_9
    const-string v8, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v0, v7

    .line 157
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->allowUploadInMobileNetwork(Z)I

    move-result v5

    .line 158
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:I
    :cond_2
    move v0, v6

    .line 156
    goto :goto_1

    .line 164
    :sswitch_a
    const-string v8, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v7

    .line 167
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->allowUploadAlways(Z)I

    move-result v5

    .line 168
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:I
    :cond_3
    move v0, v6

    .line 166
    goto :goto_2

    .line 174
    :sswitch_b
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->configureUserType(I)I

    move-result v5

    .line 178
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_c
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->getUserType()I

    move-result v5

    .line 186
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v5           #_result:I
    :sswitch_d
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->forceUpload()I

    move-result v5

    .line 194
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v5           #_result:I
    :sswitch_e
    const-string v6, "com.huawei.lcagent.client.ILogCollect"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->configure(Ljava/lang/String;)I

    move-result v5

    .line 204
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
