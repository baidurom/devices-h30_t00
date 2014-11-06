.class public Lcom/android/hwcamera/PhoneStateChangedListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/hwcamera/PhoneStateChangedListener;


# instance fields
.field private flag:Z

.field private mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->flag:Z

    .line 69
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/PhoneStateChangedListener;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/android/hwcamera/PhoneStateChangedListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/PhoneStateChangedListener;->instance:Lcom/android/hwcamera/PhoneStateChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/PhoneStateChangedListener;

    invoke-direct {v0}, Lcom/android/hwcamera/PhoneStateChangedListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/PhoneStateChangedListener;->instance:Lcom/android/hwcamera/PhoneStateChangedListener;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/hwcamera/PhoneStateChangedListener;->instance:Lcom/android/hwcamera/PhoneStateChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    .line 30
    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 43
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->flag:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

    invoke-interface {v1}, Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;->onHangup()V

    .line 47
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->flag:Z

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged: ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->flag:Z

    .line 51
    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

    invoke-interface {v1}, Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;->onCallHook()V

    goto :goto_0

    .line 54
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->flag:Z

    .line 55
    iget-object v1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

    invoke-interface {v1}, Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;->onCallRing()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnPhoneStateChangedListener(Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;)V
    .locals 0
    .parameter "phoneStateChangeListener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/PhoneStateChangedListener;->mPhoneStateChangeListener:Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;

    .line 65
    return-void
.end method
