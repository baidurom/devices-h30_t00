.class Lcom/android/internal/telephony/ITelephony$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 1834
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1835
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    .line 1836
    return-void
.end method


# virtual methods
.method public adjustModemRadioPower(II)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5115
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5116
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5117
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5118
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x9f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5119
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5120
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5123
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5126
    return v0

    .line 5123
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public adjustModemRadioPowerByBand(III)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5146
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5147
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5148
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5149
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5150
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5151
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5152
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5155
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5158
    return v0

    .line 5155
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public answerRingingCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1980
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1982
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    return-void

    .line 1985
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public answerRingingCallGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3362
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3364
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3365
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3368
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    return-void

    .line 3368
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public aquire3GSwitchLock()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4765
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4766
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4767
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4768
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    return v0

    .line 4771
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4434
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4436
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4437
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4438
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4439
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4440
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4441
    invoke-virtual {p3, v2}, Landroid/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4445
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4448
    return v0

    .line 4445
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4384
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4385
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4386
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4387
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4388
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4389
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4390
    invoke-virtual {p2, v2}, Landroid/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4397
    return v0

    .line 4394
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public btSimapDisconnectSIM()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4410
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4411
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4412
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4413
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4419
    return v0

    .line 4416
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public btSimapPowerOffSIM()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4514
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4515
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4516
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4517
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4520
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4523
    return v0

    .line 4520
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4489
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4490
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4491
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4492
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4493
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4494
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4495
    invoke-virtual {p2, v2}, Landroid/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4502
    return v0

    .line 4499
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4462
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4463
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4464
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4465
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4466
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4467
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4468
    invoke-virtual {p2, v2}, Landroid/telephony/BtSimapOperResponse;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4472
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4475
    return v0

    .line 4472
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public call(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1875
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1878
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    return-void

    .line 1881
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public callGemini(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3279
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3281
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3282
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3283
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3286
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    return-void

    .line 3286
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public cancelMissedCallsNotification()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2127
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2129
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    return-void

    .line 2132
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public cancelMissedCallsNotificationGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3479
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3480
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3481
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3482
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3485
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    return-void

    .line 3485
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public cleanupApnTypeGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4997
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4998
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4999
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5000
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5001
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5002
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5005
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5008
    return v0

    .line 5005
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2849
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2852
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2853
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2856
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2859
    return v0

    .line 2856
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public closeIccLogicalChannelGemini(II)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2870
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2872
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2873
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2874
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2875
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2878
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    return v0

    .line 2878
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1856
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1859
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1865
    return-void

    .line 1862
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dialGemini(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3260
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3264
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3270
    return-void

    .line 3267
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2329
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2332
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2333
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2336
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2339
    return v0

    .line 2336
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4231
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4233
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4234
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4235
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4236
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4239
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4242
    return v0

    .line 4239
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2370
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2372
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2373
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2376
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    return v0

    .line 2376
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4250
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4252
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4253
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4254
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4260
    return v0

    .line 4257
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2290
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2291
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2292
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2298
    return-void

    .line 2295
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3745
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3746
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3747
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3748
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3751
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    return-void

    .line 3751
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2308
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2311
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2312
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2315
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2318
    return v0

    .line 2315
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4212
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4213
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4214
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4215
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4216
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4217
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4220
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4223
    return v0

    .line 4220
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2350
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2352
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2353
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2356
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2359
    return v0

    .line 2356
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4194
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4196
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4197
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4198
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4201
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4204
    return v0

    .line 4201
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2273
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2274
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2275
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2281
    return-void

    .line 2278
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3727
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3729
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3730
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3733
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    return-void

    .line 3733
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public endCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1949
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1950
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1951
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1952
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1955
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1958
    return v0

    .line 1955
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public endCallGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3342
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3344
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3345
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3346
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3349
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3352
    return v0

    .line 3349
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public get3GCapabilitySIM()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4730
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4731
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4732
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4733
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4736
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4739
    return v0

    .line 4736
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4851
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4852
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4853
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4854
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4857
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4860
    return v0

    .line 4857
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getActivePhoneType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2505
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2507
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2508
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2511
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    return v0

    .line 2511
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getActivePhoneTypeGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3519
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3520
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3522
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3523
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3526
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3529
    return v0

    .line 3526
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAdnStorageInfo(I)[I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4979
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4980
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4981
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4982
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4983
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4986
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4989
    return-object v0

    .line 4986
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3075
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3076
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3077
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3078
    sget-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3081
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    return-object v0

    .line 3081
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCallState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2449
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2451
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2452
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2455
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    return v0

    .line 2455
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCallStateGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3498
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3500
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3501
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3502
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3508
    return v0

    .line 3505
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2525
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2527
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2528
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2531
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2534
    return v0

    .line 2531
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCdmaEriIconMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2547
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2549
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2550
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2553
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2556
    return v0

    .line 2553
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2567
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2568
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2569
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2570
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2576
    return-object v0

    .line 2573
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2407
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2409
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2410
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2421
    return-object v0

    .line 2414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCellLocationGemini(I)Landroid/os/Bundle;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3761
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3764
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3765
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3766
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3773
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3776
    return-object v0

    .line 3769
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3773
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDataActivity()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2466
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2468
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2469
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2472
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    return v0

    .line 2472
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDataActivityGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4304
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4306
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4307
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4308
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4311
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4314
    return v0

    .line 4311
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDataState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2483
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2484
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2485
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2486
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2489
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2492
    return v0

    .line 2489
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDataStateGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4286
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4287
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4288
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4289
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4290
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4296
    return v0

    .line 4293
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4904
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4906
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4907
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4908
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4911
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4914
    return-object v0

    .line 4911
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4960
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4961
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4963
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4964
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4965
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4968
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4971
    return-object v0

    .line 4968
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIccATR()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2988
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2989
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2990
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2991
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2994
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2997
    return-object v0

    .line 2994
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIccATRGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3008
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3011
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3012
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3015
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    return-object v0

    .line 3015
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3117
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3118
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3119
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3120
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3123
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    return-object v0

    .line 3123
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3638
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3639
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3641
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3642
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3645
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3648
    return-object v0

    .line 3645
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4868
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4869
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4870
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4871
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4872
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4875
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    return-object v0

    .line 4875
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4922
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4924
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4925
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4926
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4927
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4930
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4933
    return-object v0

    .line 4930
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4886
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4888
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4889
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4890
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4893
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    return-object v0

    .line 4893
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4941
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4942
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4943
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4944
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4945
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4946
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4949
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4952
    return-object v0

    .line 4949
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLastError()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2893
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2895
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2896
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2899
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2902
    return v0

    .line 2899
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLastErrorGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2914
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2916
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2917
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2918
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2921
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2924
    return v0

    .line 2921
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4122
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4124
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4125
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4126
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4129
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4132
    return-object v0

    .line 4129
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4104
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4105
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4106
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4107
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4108
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    return-object v0

    .line 4111
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getLteOnCdmaMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2675
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2677
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2678
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2681
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2684
    return v0

    .line 2681
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getMissedCallCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5087
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5088
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5089
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5090
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5093
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5096
    return v0

    .line 5093
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3880
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3881
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3882
    if-eqz p2, :cond_0

    .line 3883
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3884
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3889
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3890
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3893
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3896
    return-void

    .line 3887
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3893
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2432
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2434
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2435
    sget-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2438
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2441
    return-object v0

    .line 2438
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3787
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3789
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3790
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3791
    sget-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3794
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3797
    return-object v0

    .line 3794
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNetworkCountryIsoGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5396
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5397
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5398
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5399
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5400
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5403
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5406
    return-object v0

    .line 5403
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5344
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5345
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5346
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5347
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5348
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5351
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5354
    return-object v0

    .line 5351
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5318
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5319
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5320
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5321
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5322
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5325
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5328
    return-object v0

    .line 5325
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNetworkType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2629
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2631
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2632
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2635
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2638
    return v0

    .line 2635
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3942
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3943
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3944
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3945
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3946
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3949
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3952
    return v0

    .line 3949
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPendingMmiCodesGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3459
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3461
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3462
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3463
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3466
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3469
    return v0

    .line 3466
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPreciseCallState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3201
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3202
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3203
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3204
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3207
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3210
    return v0

    .line 3207
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3904
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3905
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3906
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3907
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3910
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    return-object v0

    .line 3910
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getScAddressGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4676
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4678
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4679
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4680
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4683
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4686
    return-object v0

    .line 4683
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4582
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4583
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4584
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4585
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4586
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4593
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4596
    return-object v0

    .line 4589
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4593
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getServiceStateGemini(I)Landroid/os/Bundle;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4610
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4611
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4612
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4613
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4614
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4615
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4622
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4625
    return-object v0

    .line 4618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4622
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4032
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4033
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4035
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4036
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4039
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4042
    return-object v0

    .line 4039
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimIndicatorState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4536
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4537
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4538
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4539
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4542
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4545
    return v0

    .line 4542
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimIndicatorStateGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4559
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4561
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4562
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4563
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4566
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4569
    return v0

    .line 4566
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3996
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3998
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3999
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4000
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4003
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4006
    return-object v0

    .line 4003
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4014
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4015
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4016
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4017
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4018
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4021
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4024
    return-object v0

    .line 4021
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4068
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4070
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4071
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4072
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4075
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4078
    return-object v0

    .line 4075
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSimState(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3978
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3980
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3981
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3982
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3985
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3988
    return v0

    .line 3985
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSmsDefaultSim()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4713
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4714
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4715
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4716
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4719
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4722
    return v0

    .line 4719
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5169
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5170
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5171
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5172
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5175
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5178
    return-object v0

    .line 5175
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5186
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5187
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5188
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5189
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5190
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5196
    return-object v0

    .line 5193
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4086
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4087
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4088
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4089
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4090
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4093
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4096
    return-object v0

    .line 4093
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4050
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4053
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4054
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4057
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4060
    return-object v0

    .line 4057
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4158
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4159
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4160
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4162
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4165
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    return-object v0

    .line 4165
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4140
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4142
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4143
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4144
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4147
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    return-object v0

    .line 4147
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVoiceMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2609
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2611
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2612
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2615
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    return v0

    .line 2615
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4322
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4324
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4325
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4326
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4329
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4332
    return v0

    .line 4329
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2198
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2200
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2201
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2202
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2205
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    return v0

    .line 2205
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public handlePinMmiGemini(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3616
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3618
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3619
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3620
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3621
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3624
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3627
    return v0

    .line 3624
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public hasIccCard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2650
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2652
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2653
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2656
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2659
    return v0

    .line 2656
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public hasIccCardGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3960
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3962
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3963
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3964
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3967
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3970
    return v0

    .line 3967
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public is3GSwitchLocked()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4800
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4801
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4802
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4803
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4806
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4809
    return v0

    .line 4806
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4834
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4835
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4836
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4837
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4840
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4843
    return v0

    .line 4840
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4817
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4818
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4819
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4820
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4823
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    return v0

    .line 4823
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2390
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2391
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2392
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2393
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2396
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2399
    return v0

    .line 2396
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4268
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4270
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4271
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4272
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4275
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4278
    return v0

    .line 4275
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isFDNEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3241
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3242
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3243
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3244
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3247
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3250
    return v0

    .line 3247
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isFDNEnabledGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4343
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4345
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4346
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4347
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4350
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4353
    return v0

    .line 4350
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5274
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5275
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5276
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5277
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5280
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5283
    return v0

    .line 5280
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5291
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5292
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5293
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5294
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5295
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5298
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5301
    return v0

    .line 5298
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isIdle()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2066
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2067
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2068
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2069
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2072
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    return v0

    .line 2072
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isIdleGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3441
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3444
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3445
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3448
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3451
    return v0

    .line 3448
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5369
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5370
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5371
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5372
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5373
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5376
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5379
    return v0

    .line 5376
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOffhook()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2024
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2025
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2026
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2027
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2030
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2033
    return v0

    .line 2030
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOffhookGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3399
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3401
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3402
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3403
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3406
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3409
    return v0

    .line 3406
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5239
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5240
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5241
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5242
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5245
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    return-object v0

    .line 5245
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5256
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5257
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5258
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5259
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5260
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5263
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5266
    return-object v0

    .line 5263
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5204
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5205
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5206
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5207
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5210
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5213
    return-object v0

    .line 5210
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5221
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5222
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5223
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5224
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5225
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5228
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5231
    return-object v0

    .line 5228
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isPhbReady()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4636
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4637
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4638
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4639
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4642
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4645
    return v0

    .line 4642
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isPhbReadyGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4658
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4660
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4661
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4662
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4665
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4668
    return v0

    .line 4665
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isRadioOn()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2087
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2088
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2089
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2090
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2093
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2096
    return v0

    .line 2093
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3541
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3543
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3544
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3545
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3548
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3551
    return v0

    .line 3548
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isRinging()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2045
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2046
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2047
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2048
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2051
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    return v0

    .line 2051
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isRingingGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3420
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3423
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3424
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3427
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    return v0

    .line 3427
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isSimInsert(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3809
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3810
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3812
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3813
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3816
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3819
    return v0

    .line 3816
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isSimPinEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2108
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2110
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2111
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2114
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    return v0

    .line 2114
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isTestIccCard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3221
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3222
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3223
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3224
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3227
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3230
    return v0

    .line 3227
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isTestIccCardGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4176
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4178
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4179
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4180
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4183
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4186
    return v0

    .line 4183
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isVTIdle()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4361
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4362
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4363
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4364
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4367
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4370
    return v0

    .line 4367
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isVoiceIdle()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3097
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3098
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3099
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3100
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3103
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3106
    return v0

    .line 3103
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2589
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2590
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2591
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2592
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2595
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    return v0

    .line 2595
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2805
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2808
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2809
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2812
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    return v0

    .line 2812
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public openIccLogicalChannelGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2827
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2831
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2832
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2835
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    return v0

    .line 2835
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public openIccLogicalChannelWithSw(Ljava/lang/String;)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3030
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3033
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3034
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3037
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    return-object v0

    .line 3037
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public openIccLogicalChannelWithSwGemini(Ljava/lang/String;I)[B
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3052
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3056
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3057
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3060
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3063
    return-object v0

    .line 3060
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerForSimModeChange(Landroid/os/IBinder;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5018
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5019
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5020
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5021
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5022
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5025
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5028
    return-void

    .line 5025
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public release3GSwitchLock(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4782
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4784
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4785
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4786
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4789
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4792
    return v0

    .line 4789
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4747
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4749
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x8b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4750
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4751
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4754
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4757
    return v0

    .line 4754
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5049
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5050
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5051
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5052
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5053
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5056
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5059
    return-void

    .line 5056
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDefaultPhone(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3923
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3925
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3926
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3929
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3932
    return-void

    .line 3929
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setGprsConnType(II)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3829
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3831
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3832
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3833
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3836
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3839
    return-void

    .line 3836
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setGprsTransferType(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3848
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3849
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3851
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3857
    return-void

    .line 3854
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setGprsTransferTypeGemini(II)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3863
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3865
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3866
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3867
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    return-void

    .line 3870
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setRadio(Z)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2236
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2237
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2239
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2240
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2243
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2246
    return v0

    :cond_0
    move v2, v1

    .line 2237
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2240
    goto :goto_1

    .line 2243
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setRadioOff()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3184
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3185
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3186
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3187
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3190
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3193
    return v0

    .line 3190
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setRoamingIndicatorNeddedProperty(ZZ)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 5065
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5066
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5067
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5068
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0x9d

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5069
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5072
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 5073
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5075
    return-void

    :cond_0
    move v2, v1

    .line 5066
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5067
    goto :goto_1

    .line 5072
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 5073
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setScAddressGemini(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4693
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4694
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4695
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4696
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4697
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4700
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4703
    return-void

    .line 4700
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public showCallScreen()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1898
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1900
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1901
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1904
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1907
    return v0

    .line 1904
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public showCallScreenGemini(I)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3299
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3300
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3301
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3302
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3303
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3306
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    return v0

    .line 3306
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1926
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1927
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1929
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 1930
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1933
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1934
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1936
    return v0

    :cond_0
    move v2, v1

    .line 1927
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1930
    goto :goto_1

    .line 1933
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1934
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public showCallScreenWithDialpadGemini(ZI)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 3320
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3321
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3322
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v5, 0x45

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3324
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 3325
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 3328
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3331
    return v0

    :cond_0
    move v2, v1

    .line 3321
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3325
    goto :goto_1

    .line 3328
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public silenceRinger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2005
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2007
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    return-void

    .line 2010
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public silenceRingerGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3380
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3383
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3386
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    return-void

    .line 3386
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public simAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3139
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3143
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    return-object v0

    .line 3146
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3662
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3663
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3664
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3665
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3666
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3667
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3670
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3673
    return-object v0

    .line 3670
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2147
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2149
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2150
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2151
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2154
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2157
    return v0

    .line 2154
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public supplyPinGemini(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3564
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3565
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3567
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3568
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3569
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3572
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3575
    return v0

    .line 3572
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2172
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2175
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2176
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2177
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2180
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    return v0

    .line 2180
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3589
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3591
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3593
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3594
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3595
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3598
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    return v0

    .line 3598
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2218
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2220
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    return-void

    .line 2223
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2751
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2758
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2759
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2760
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2763
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    return-object v0

    .line 2763
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccBasicChannelGemini(IIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2777
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2781
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2782
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2786
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2787
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2790
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    return-object v0

    .line 2790
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2696
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2701
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2703
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2705
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2706
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2709
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    return-object v0

    .line 2709
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccLogicalChannelGemini(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2723
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2727
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2729
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2733
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2734
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2737
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    return-object v0

    .line 2737
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2935
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2938
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2941
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2943
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2944
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2947
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    return-object v0

    .line 2947
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transmitIccSimIOGemini(IIIIILjava/lang/String;I)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2961
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2962
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2965
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2966
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2967
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2970
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2971
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2974
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    return-object v0

    .line 2974
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3162
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3166
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3167
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3170
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    return-object v0

    .line 3170
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3687
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3688
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3691
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3692
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3693
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3696
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3699
    return-object v0

    .line 3696
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterForSimModeChange(Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5034
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5035
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5036
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5037
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5040
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5043
    return-void

    .line 5040
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2256
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2258
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    return-void

    .line 2261
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public updateServiceLocationGemini(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3709
    :try_start_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3711
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3712
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3715
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    return-void

    .line 3715
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
