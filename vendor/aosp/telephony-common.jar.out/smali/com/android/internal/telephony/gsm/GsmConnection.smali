.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0x1f4

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60

.field private static mGsmConnectionExt:Lcom/mediatek/common/telephony/IGsmConnectionExt;


# instance fields
.field address:Ljava/lang/String;

.field private callType:I

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field isVideo:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field parent:Lcom/android/internal/telephony/gsm/GsmCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;

.field private remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mGsmConnectionExt:Lcom/mediatek/common/telephony/IGsmConnectionExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 2
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 104
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callType:I

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 164
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 166
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 168
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 169
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 170
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 171
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 173
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 176
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    .line 178
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 180
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v2, -0x1

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 104
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 105
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callType:I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 188
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 191
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    .line 193
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 194
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 196
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 200
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 201
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 204
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 205
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 883
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 885
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 877
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 878
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 879
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 213
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getRemoteCauseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 898
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    .line 693
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 834
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 851
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 847
    :goto_0
    return-object v0

    .line 842
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 847
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 766
    const/4 v1, 0x0

    .line 769
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-le v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 779
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 782
    const/4 v1, 0x0

    .line 801
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 805
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 808
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 809
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 810
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 811
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 814
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 817
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 786
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 788
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 790
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 792
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 794
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 796
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 701
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 733
    :goto_0
    return v0

    .line 703
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2

    .line 710
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-ne v1, v0, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmConnection;->mGsmConnectionExt:Lcom/mediatek/common/telephony/IGsmConnectionExt;

    const/16 v4, 0x1f4

    invoke-interface {v3, v4}, Lcom/mediatek/common/telephony/IGsmConnectionExt;->getFirstPauseDelayMSeconds(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 725
    :cond_2
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_3

    .line 726
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 727
    :cond_3
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_4

    .line 728
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 730
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 894
    :cond_0
    monitor-exit v1

    .line 895
    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 864
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 866
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 872
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 873
    return-void

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateCallLog(Lcom/android/internal/telephony/Connection$DisconnectCause;Lcom/android/internal/telephony/Call$State;)V
    .locals 5
    .parameter "causeCode"
    .parameter "state"

    .prologue
    .line 965
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record the abnormal log of call,the causeCode is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remoteCauseCode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 969
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    .line 970
    const-string v1, "GSM"

    const-string v2, "normal call is drop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callType:I

    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->writeCallLostInfo()V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 979
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->wasConnecting(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_1

    .line 981
    const-string v1, "GSM"

    const-string v2, "mo call is fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callType:I

    .line 983
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->writeCallLostInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 991
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: updateCallLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    throw v1
.end method

.method private wasConnecting(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 960
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeCallLostInfo()V
    .locals 3

    .prologue
    .line 998
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;-><init>()V

    .line 1000
    .local v0, cCIRCUIT_SERVICE_PERFORMANCE_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;
    if-eqz v0, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 1002
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 1003
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1004
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 1005
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enDropCallType:Lcom/huawei/device/chrlog/ENCDropCallType;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCallType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCDropCallType;->setValue(Ljava/lang/String;)V

    .line 1006
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getNetworkRAT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCNetworkRAT;->setValue(Ljava/lang/String;)V

    .line 1007
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enCSLostCause:Lcom/huawei/device/chrlog/ENCCSLostCause;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRemoteCauseCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCCSLostCause;->setValue(Ljava/lang/String;)V

    .line 1008
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getSignalStrength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1009
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getSignalQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1010
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getMCC()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1011
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getMNC()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1012
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1013
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getRac()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1014
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1015
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getTac()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1016
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;->getEci()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-static {}, Lcom/huawei/telephony/ProtocolLogManager;->getInstance()Lcom/huawei/telephony/ProtocolLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/huawei/telephony/ProtocolLogManager;->reportAbnormalLevelA(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 1027
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 368
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 223
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 9
    .parameter "causeCode"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    .line 388
    sparse-switch p1, :sswitch_data_0

    .line 475
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 476
    .local v1, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 477
    .local v2, serviceState:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 480
    .local v0, cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 483
    .local v3, uiccAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :goto_0
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 486
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 517
    .end local v0           #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v1           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v2           #serviceState:I
    .end local v3           #uiccAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :goto_1
    return-object v4

    .line 390
    :sswitch_0
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 398
    :sswitch_1
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 401
    :sswitch_2
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 404
    :sswitch_3
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 407
    :sswitch_4
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 410
    :sswitch_5
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 413
    :sswitch_6
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 416
    :sswitch_7
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 419
    :sswitch_8
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 422
    :sswitch_9
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 425
    :sswitch_a
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 428
    :sswitch_b
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 431
    :sswitch_c
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 434
    :sswitch_d
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 437
    :sswitch_e
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 440
    :sswitch_f
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 443
    :sswitch_10
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 446
    :sswitch_11
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 452
    :sswitch_12
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 455
    :sswitch_13
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 458
    :sswitch_14
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 461
    :sswitch_15
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 464
    :sswitch_16
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 467
    :sswitch_17
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 470
    :sswitch_18
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 480
    .restart local v0       #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .restart local v1       #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v2       #serviceState:I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 487
    .restart local v3       #uiccAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :cond_1
    if-eq v2, v7, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 494
    :cond_2
    if-ne p1, v8, :cond_3

    .line 495
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 498
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 500
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_5

    .line 501
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 502
    :cond_5
    const v4, 0xffff

    if-ne p1, v4, :cond_9

    .line 503
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 504
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_1

    .line 505
    :cond_6
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 506
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_1

    .line 507
    :cond_7
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 508
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_1

    .line 510
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_1

    .line 512
    :cond_9
    if-ne p1, v8, :cond_a

    .line 513
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_1

    .line 517
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_1

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_9
        0x11 -> :sswitch_0
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_c
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x1f -> :sswitch_d
        0x22 -> :sswitch_2
        0x26 -> :sswitch_12
        0x29 -> :sswitch_1
        0x2a -> :sswitch_3
        0x2c -> :sswitch_1
        0x2f -> :sswitch_10
        0x31 -> :sswitch_1
        0x39 -> :sswitch_11
        0x3a -> :sswitch_4
        0x3f -> :sswitch_12
        0x41 -> :sswitch_13
        0x44 -> :sswitch_5
        0x45 -> :sswitch_14
        0x46 -> :sswitch_15
        0x4f -> :sswitch_16
        0x58 -> :sswitch_17
        0xf0 -> :sswitch_6
        0xf1 -> :sswitch_7
        0x875 -> :sswitch_18
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 656
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 657
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "GSM"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 762
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 253
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-wide v0

    .line 255
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 258
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    goto :goto_0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 661
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    if-ltz v0, :cond_0

    .line 662
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 664
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 265
    const-wide/16 v0, 0x0

    .line 267
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 743
    :cond_0
    const-string v0, ""

    .line 746
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 293
    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 3

    .prologue
    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    .line 675
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 683
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 688
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 5
    .parameter "cause"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 540
    .local v0, stateBeforeDisconnect:Lcom/android/internal/telephony/Call$State;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v1, :cond_0

    .line 541
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 545
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateCallLog(Lcom/android/internal/telephony/Connection$DisconnectCause;Lcom/android/internal/telephony/Call$State;)V

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 561
    return-void
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 378
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->remoteCauseCode:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 529
    return-void
.end method

.method onReplaceDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 930
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 931
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReplaceDisconnect: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyVtReplaceDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 946
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 309
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 321
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 356
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method resumeHoldAfterDialFailed()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 924
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 301
    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 951
    .local v0, str:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*  -> id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 569
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_6

    move v4, v5

    .line 571
    .local v4, wasHolding:Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 573
    .local v1, newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 574
    const-string v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 575
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 576
    const/4 v0, 0x1

    .line 580
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 581
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 582
    const/4 v0, 0x1

    .line 583
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 590
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 591
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 592
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 595
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    iget-boolean v8, p1, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    if-eq v7, v8, :cond_2

    .line 596
    iget-boolean v7, p1, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    .line 597
    const/4 v0, 0x1

    .line 601
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v7, :cond_8

    .line 602
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v7, :cond_3

    .line 603
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 605
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 606
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 607
    const/4 v0, 0x1

    .line 617
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v8, :cond_b

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isVideo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 629
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_4

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 633
    :cond_4
    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    .line 635
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 638
    :cond_5
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4           #wasHolding:Z
    :cond_6
    move v4, v6

    .line 569
    goto/16 :goto_0

    .line 585
    .restart local v1       #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v4       #wasHolding:Z
    :cond_7
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 586
    const/4 v0, 0x1

    .line 587
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 610
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 611
    .local v2, parentStateChange:Z
    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    move v0, v5

    :goto_4
    goto/16 :goto_2

    :cond_a
    move v0, v6

    goto :goto_4

    .end local v2           #parentStateChange:Z
    :cond_b
    move v5, v6

    .line 617
    goto/16 :goto_3
.end method
