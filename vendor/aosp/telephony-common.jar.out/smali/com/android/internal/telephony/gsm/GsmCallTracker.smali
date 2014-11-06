.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;,
        Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field causeCode:I

.field connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

.field delayedClirMode:I

.field delayedDialString:Ljava/lang/String;

.field delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field desiredMute:Z

.field private dmAgent:Lcom/mediatek/common/dm/DmAgent;

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field hangupPendingMO:Z

.field hasPendingHangupRequest:Z

.field hasPendingReplaceRequest:Z

.field private hasSendAgpsStartIntent:Z

.field private isFullLock:Z

.field private isInLock:Z

.field isPendingSwap:Z

.field isSwitchBeforeDial:Z

.field mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

.field protected mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

.field protected mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private needHangupMOCall:Z

.field private needHangupMTCall:Z

.field pendingHangupRequest:I

.field pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field state:Lcom/android/internal/telephony/PhoneConstants$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 181
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 108
    new-array v5, v6, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 109
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 110
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 111
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 118
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 120
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 122
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 125
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    .line 126
    new-instance v5, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v5}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 136
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 140
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 141
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 142
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 143
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 145
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 147
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 150
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 151
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 154
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 165
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 172
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 173
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 194
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 196
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x9

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xa

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    .line 206
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x11

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallProgressInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x14

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    const-string v5, "DmAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 213
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 215
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCallTracker$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 221
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    .line 223
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v5}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFullLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    .line 226
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needHangupMOCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needHangupMTCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mChrGsmComInfo:Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    .line 237
    return-void

    :cond_1
    move v3, v4

    .line 223
    goto :goto_0

    .line 229
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DmAgent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DmAgent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z

    return p1
.end method

.method private dumpState()V
    .locals 7

    .prologue
    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, callId:I
    const/4 v1, 0x0

    .line 898
    .local v1, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Phone State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Ringing call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 902
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 903
    .local v3, l:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 904
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Foreground call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MPTY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 909
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 910
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_1

    .line 911
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 914
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* Background call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", MPTY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 916
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 917
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_2

    .line 918
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 921
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x7

    :goto_3
    if-ge v2, v4, :cond_4

    .line 922
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    .line 923
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v5, 0x1

    .line 924
    add-int/lit8 v1, v1, 0x1

    .line 925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* conn id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 921
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 928
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* GsmCT has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 318
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 320
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 321
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 323
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getCurrentTotalConnections()I
    .locals 4

    .prologue
    .line 2273
    const/4 v0, 0x0

    .line 2274
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x7

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2275
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 2276
    add-int/lit8 v0, v0, 0x1

    .line 2274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2279
    :cond_1
    return v0
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1152
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1144
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1146
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1148
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1150
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2098
    const/4 v6, 0x0

    .line 2099
    .local v6, mode:I
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v5, v8

    check-cast v5, [Ljava/lang/String;

    .line 2100
    .local v5, incomingCallInfo:[Ljava/lang/String;
    aget-object v8, v5, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2101
    .local v0, callId:I
    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2102
    .local v1, callMode:I
    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2104
    .local v7, seqNumber:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_3

    .line 2105
    const/4 v6, 0x1

    .line 2131
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 2132
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2133
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2134
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notify voiceCallIncomingIndicationRegistrants "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2138
    :cond_1
    if-ne v6, v11, :cond_2

    .line 2139
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 2140
    .local v3, dc:Lcom/android/internal/telephony/DriverCall;
    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 2141
    iput v0, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 2142
    sget-object v8, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v8, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2144
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v6, v0, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2146
    if-nez v1, :cond_8

    .line 2147
    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2148
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2158
    :goto_1
    aget-object v8, v5, v11

    iput-object v8, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2159
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v8, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2160
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 2161
    iget-object v8, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v9, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2163
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, v3, p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 2164
    .local v2, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2166
    .end local v2           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v3           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_2
    return-void

    .line 2106
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_0

    .line 2107
    if-ne v1, v13, :cond_5

    .line 2109
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v12, :cond_0

    .line 2110
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v8, v4

    .line 2111
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2112
    const/4 v6, 0x1

    .line 2113
    goto/16 :goto_0

    .line 2109
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2116
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v4           #i:I
    :cond_5
    if-nez v1, :cond_7

    .line 2118
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v12, :cond_0

    .line 2119
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v8, v4

    .line 2120
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2121
    const/4 v6, 0x1

    .line 2122
    goto/16 :goto_0

    .line 2118
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2126
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v4           #i:I
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2150
    .restart local v3       #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_8
    if-ne v1, v13, :cond_9

    .line 2151
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2152
    iput-boolean v11, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto :goto_1

    .line 2155
    :cond_9
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2156
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto :goto_1
.end method

.method private handleRadioNotAvailable()V
    .locals 2

    .prologue
    .line 886
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 889
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 588
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 605
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPendingReplaceRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 622
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 629
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private resumeBackgroundAfterDialFailed()V
    .locals 5

    .prologue
    .line 1425
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1427
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1428
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1430
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->resumeHoldAfterDialFailed()V

    .line 1427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1432
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private updateMptyState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1532
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1537
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BG call is MPTY? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1539
    return-void

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_0

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto :goto_1
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 638
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 639
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 647
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 654
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState: old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 658
    :cond_1
    return-void

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 642
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 644
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 650
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 469
    const-string v0, "acceptCall: incoming..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 495
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 474
    const-string v0, "acceptCall: waiting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 562
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 572
    .local v1, ret:Z
    :goto_0
    return v1

    .line 565
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 546
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 548
    return-void
.end method

.method conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 532
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->CONFERENCE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 533
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 16
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v11

    if-nez v11, :cond_0

    .line 336
    new-instance v11, Lcom/android/internal/telephony/CallStateException;

    const-string v12, "cannot dial in current state"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 342
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_1

    .line 348
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_2

    .line 360
    new-instance v11, Lcom/android/internal/telephony/CallStateException;

    const-string v12, "cannot dial in current state"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 363
    :cond_2
    new-instance v11, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v0, p0

    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 365
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v12, 0x4e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_5

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v12, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v12, v11, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 374
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v11, :cond_4

    .line 375
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 377
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 378
    .local v8, msg:Landroid/os/Message;
    const/16 v11, 0x12

    iput v11, v8, Landroid/os/Message;->what:I

    .line 379
    new-instance v11, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {v11, v12, v13, v14}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    const-wide/16 v11, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 440
    .end local v8           #msg:Landroid/os/Message;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 441
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 443
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v11

    .line 386
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 387
    .local v6, len:I
    const/4 v4, 0x0

    .line 388
    .local v4, i:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 389
    .local v9, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 391
    .local v3, firstCharAdded:Z
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_a

    .line 392
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 394
    .local v2, c:C
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_7

    .line 395
    const/16 v11, 0x70

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    :cond_7
    const/16 v11, 0x3b

    if-ne v2, v11, :cond_8

    .line 397
    const/16 v11, 0x77

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 399
    :cond_8
    const/16 v11, 0x2b

    if-ne v2, v11, :cond_9

    if-nez v3, :cond_6

    .line 400
    :cond_9
    const/4 v3, 0x1

    .line 401
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 407
    .end local v2           #c:C
    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 411
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, string:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-nez v11, :cond_b

    .line 413
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v7, mbundle:Landroid/os/Bundle;
    const-string v11, "EM_Call_State"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string v11, "Call_Number"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 418
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 420
    const-string v11, "Broadcast ecc start intent for AGPS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 425
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #mbundle:Landroid/os/Bundle;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-nez v11, :cond_d

    .line 426
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 428
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v12, v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v12, v0, v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 433
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 434
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 435
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 241
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 242
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 243
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 246
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallProgressInfo(Landroid/os/Handler;)V

    .line 247
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIncomingCallIndication(Landroid/os/Handler;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 252
    .local v1, c:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    .end local v1           #c:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 265
    return-void

    .line 260
    :catch_1
    move-exception v2

    .line 261
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1398
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1402
    const-string v1, "  connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1408
    const-string v1, "  droppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1410
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ringingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " foregroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " desiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 538
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2200
    const-string v0, "getAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2202
    return-void
.end method

.method getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2205
    const-string v0, "getAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2207
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1131
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1132
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1133
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1138
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1131
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1138
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2195
    const-string v0, "getCurrentCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2197
    return-void
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    return v0
.end method

.method getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2210
    const-string v0, "getPpuAndCurrency"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2212
    return-void
.end method

.method protected handleCallProgressInfo(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "ar"

    .prologue
    .line 1544
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [Ljava/lang/String;

    move-object/from16 v4, v32

    check-cast v4, [Ljava/lang/String;

    .line 1545
    .local v4, CallProgressInfo:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1546
    .local v5, callId:I
    const/16 v32, 0x1

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1547
    .local v23, msgType:I
    const/16 v12, 0xff

    .line 1548
    .local v12, dir:I
    const/16 v6, 0xff

    .line 1549
    .local v6, callMode:I
    const/16 v26, 0x0

    .line 1550
    .local v26, number:Ljava/lang/String;
    const/16 v30, 0xff

    .line 1551
    .local v30, toa:I
    const/16 v27, 0x0

    .line 1553
    .local v27, oldParent:Lcom/android/internal/telephony/gsm/GsmCall;
    const/16 v25, 0x0

    .line 1554
    .local v25, newRinging:Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    .line 1555
    .local v16, hasNonHangupStateChanged:Z
    const/16 v31, 0x0

    .line 1556
    .local v31, unknownConnectionAppeared:Z
    const/16 v20, 0x0

    .line 1585
    .local v20, localHangup:Z
    if-eqz v23, :cond_1

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_1

    :cond_0
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3f

    .line 1588
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 2008
    :cond_2
    :goto_0
    return-void

    .line 1592
    :cond_3
    add-int/lit8 v17, v5, -0x1

    .line 1593
    .local v17, i:I
    if-ltz v17, :cond_4

    const/16 v32, 0x6

    move/from16 v0, v17

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 1594
    :cond_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error caller id. i = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1597
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v9, v32, v17

    .line 1598
    .local v9, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v11, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v11}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1599
    .local v11, dc:Lcom/android/internal/telephony/DriverCall;
    const/4 v10, 0x0

    .line 1600
    .local v10, count:I
    const/16 v19, 0x0

    .line 1602
    .local v19, j:I
    if-eqz v23, :cond_6

    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1604
    :cond_6
    const/16 v32, 0x4

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1605
    const/16 v32, 0x5

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1607
    const/16 v32, 0x6

    aget-object v32, v4, v32

    if-eqz v32, :cond_7

    const/16 v32, 0x6

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_7

    .line 1609
    const/16 v32, 0x6

    aget-object v26, v4, v32

    .line 1611
    const/16 v32, 0x7

    aget-object v32, v4, v32

    if-eqz v32, :cond_7

    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-eqz v32, :cond_7

    .line 1612
    const/16 v32, 0x7

    aget-object v32, v4, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1616
    :cond_7
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", dir="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", mode="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", number=\""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\", toa="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1619
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1620
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 1621
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1624
    iput v5, v11, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1626
    if-eqz v12, :cond_b

    const/16 v32, 0x1

    :goto_1
    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1628
    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    const/16 v32, 0x6

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 1629
    :cond_8
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1659
    :cond_9
    :goto_2
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    .line 1660
    if-nez v6, :cond_15

    .line 1661
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1662
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1675
    :cond_a
    :goto_3
    move-object/from16 v0, v26

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1676
    sget v32, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, v32

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1677
    move/from16 v0, v30

    iput v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1678
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    iget v0, v11, Lcom/android/internal/telephony/DriverCall;->TOA:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1681
    if-nez v9, :cond_22

    .line 1683
    const-string v32, "1. new connection appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 1687
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 1689
    const-string v32, "1.1. it is a MO call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    aput-object v33, v32, v17

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move/from16 v0, v17

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 1694
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 1698
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1700
    :try_start_0
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1702
    :catch_0
    move-exception v15

    .line 1703
    .local v15, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "unexpected error on hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1626
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 1630
    :cond_c
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 1631
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1632
    :cond_d
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-eq v5, v0, :cond_e

    .line 1633
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1634
    :cond_e
    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 1635
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1636
    :cond_f
    if-nez v23, :cond_9

    .line 1638
    const/16 v19, 0x0

    :goto_4
    const/16 v32, 0x7

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_11

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v19

    if-eqz v32, :cond_10

    .line 1640
    add-int/lit8 v10, v10, 0x1

    .line 1638
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1644
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    if-nez v10, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 1649
    :cond_12
    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1650
    const-string v32, "MO/MT conflict!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1652
    :cond_13
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1655
    :cond_14
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    goto/16 :goto_2

    .line 1664
    :cond_15
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ne v6, v0, :cond_16

    .line 1665
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1666
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 1669
    :cond_16
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1670
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_3

    .line 1711
    :cond_17
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 1713
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Pending MO dropped before call id assigned!! fg state:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1717
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1794
    :cond_18
    :goto_5
    const/16 v16, 0x1

    .line 1850
    :cond_19
    :goto_6
    if-eqz v25, :cond_1a

    .line 1851
    const-string v32, "notify CallNotifier for New Ringing connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1858
    :cond_1a
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "dropped during poll size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v24, v32, -0x1

    .local v24, n:I
    :goto_7
    if-ltz v24, :cond_2f

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1862
    .local v13, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v32

    if-eqz v32, :cond_2c

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_2c

    .line 1865
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2b

    .line 1866
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1871
    .local v7, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_8
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. missed/rejected call, conn.cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1872
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "1. setting cause to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1875
    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1876
    const/16 v20, 0x1

    .line 1891
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1b
    :goto_9
    const/16 v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 1859
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_7

    .line 1719
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v24           #n:I
    :cond_1c
    if-nez v23, :cond_18

    .line 1721
    const-string v32, "MO/MT conflict! Hang up MT call to prevent abnormal behavior."

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1727
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 1728
    :catch_1
    move-exception v15

    .line 1729
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GSM"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1740
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1d
    if-nez v23, :cond_21

    .line 1742
    const-string v32, "1.2 it is a MT call"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1748
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "isInLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", isFullLock = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    .line 1750
    const-string v32, "hang up MT call because of in DM lock state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1752
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 1753
    :catch_2
    move-exception v15

    .line 1754
    .restart local v15       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v32, "GSM"

    const-string v33, "unexpected error on hangup"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1759
    .end local v15           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v25, v32, v17

    goto/16 :goto_5

    .line 1766
    :cond_1f
    const-string v32, "Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1771
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_20

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    aget-object v32, v32, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 1776
    :cond_20
    const/16 v31, 0x1

    goto/16 :goto_5

    .line 1786
    :cond_21
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1788
    const-string v32, "1.3 Phantom call appeared!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v33, v32, v17

    .line 1791
    const/16 v31, 0x1

    goto/16 :goto_5

    .line 1798
    :cond_22
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v27

    .line 1799
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 1801
    const-string v32, "2. connection disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-nez v32, :cond_24

    :cond_23
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v32

    if-eqz v32, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 1808
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v33, v32, v17

    .line 1815
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1816
    .local v29, string:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    .line 1817
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1818
    .local v22, mbundle:Landroid/os/Bundle;
    const-string v32, "EM_Call_State"

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    const-string v32, "Call_Number"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.location.agps.EMERGENCY_CALL"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1821
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1823
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 1824
    const-string v32, "Broadcast ecc end intent for AGPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1833
    .end local v18           #intent:Landroid/content/Intent;
    .end local v22           #mbundle:Landroid/os/Bundle;
    .end local v29           #string:Ljava/lang/String;
    :cond_26
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. update current connection[i="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1834
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_27

    .line 1835
    iget-object v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v11, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1840
    :cond_27
    const/16 v32, 0xff

    move/from16 v0, v32

    if-ne v6, v0, :cond_28

    .line 1841
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo()Z

    move-result v32

    move/from16 v0, v32

    iput-boolean v0, v11, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1845
    :cond_28
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v8

    .line 1846
    .local v8, changed:Z
    if-nez v16, :cond_29

    if-eqz v8, :cond_2a

    :cond_29
    const/16 v16, 0x1

    :goto_a
    goto/16 :goto_6

    :cond_2a
    const/16 v16, 0x0

    goto :goto_a

    .line 1868
    .end local v8           #changed:Z
    .restart local v13       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v24       #n:I
    :cond_2b
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v7       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto/16 :goto_8

    .line 1877
    .end local v7           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_2c
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2e

    .line 1879
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 1880
    :cond_2d
    const-string v32, "2. local hangup"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1882
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1883
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 1885
    :cond_2e
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 1886
    const-string v32, "3. invalid number"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1888
    sget-object v32, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1889
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 1895
    .end local v13           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-nez v32, :cond_31

    .line 1896
    const-string v32, "get last call failed cause"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v32, v0

    const/16 v33, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1909
    :cond_30
    :goto_b
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_32

    if-nez v20, :cond_32

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v21, v32, -0x1

    .local v21, m:I
    :goto_c
    if-ltz v21, :cond_32

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1912
    .local v14, dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "4. Force to invoke onDisconnect() of GsmConnection with callID="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", with cause="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1914
    iget-object v0, v14, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1910
    add-int/lit8 v21, v21, -0x1

    goto :goto_c

    .line 1899
    .end local v14           #dropConnX:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v21           #m:I
    :cond_31
    if-nez v20, :cond_30

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_30

    .line 1902
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "msgType=133:Other case:CallId="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ,but not ivoke onDisconnect() of GsmConnection"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1933
    :cond_32
    if-nez v25, :cond_33

    if-eqz v16, :cond_34

    .line 1934
    :cond_33
    const-string v32, "internal clear disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1935
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1938
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1940
    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_3e

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1953
    :cond_35
    :goto_d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v28

    .line 1954
    .local v28, pid:I
    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v32

    if-eqz v32, :cond_36

    .line 1955
    const/16 v32, 0x0

    move/from16 v0, v28

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1956
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Current priority = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v28 .. v28}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1960
    .end local v28           #pid:I
    :cond_36
    const/16 v32, 0x83

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_37

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1966
    :cond_37
    const/16 v32, 0x84

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_38

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1971
    :cond_38
    if-eqz v31, :cond_39

    .line 1972
    const-string v32, "notity unknown connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 1976
    :cond_39
    if-nez v16, :cond_3a

    if-eqz v25, :cond_3c

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3b

    const/16 v32, 0x85

    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_3c

    .line 1977
    :cond_3b
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1982
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCurrentTotalConnections()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3d

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 1987
    :cond_3d
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1988
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 1989
    const-string v32, "=========dump end========="

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1947
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_35

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    goto/16 :goto_d

    .line 1991
    .end local v9           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v10           #count:I
    .end local v11           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v17           #i:I
    .end local v19           #j:I
    .end local v24           #n:I
    :cond_3f
    const/16 v32, 0x82

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v32, 0xfe

    move/from16 v0, v32

    if-ne v5, v0, :cond_2

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 1993
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", msg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 1995
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1996
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1998
    const-string v32, "notify precise call state changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 2001
    const-string v32, "========dump start========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2003
    const-string v32, "========dump stop========"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2005
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    goto/16 :goto_0
.end method

.method protected handleDialCallFailed()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2013
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2017
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_3

    .line 2018
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 2019
    .local v5, string:Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    if-eqz v6, :cond_0

    .line 2020
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2021
    .local v3, mbundle:Landroid/os/Bundle;
    const-string v6, "EM_Call_State"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2022
    const-string v6, "Call_Number"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.location.agps.EMERGENCY_CALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2025
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2026
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    .line 2027
    const-string v6, "Broadcast ecc end intent for AGPS"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2038
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mbundle:Landroid/os/Bundle;
    .end local v5           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "handleDialCallFailed - updatePendingHangupRequest"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 2041
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_1

    .line 2042
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2045
    :cond_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 2050
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropped during poll size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2051
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, n:I
    :goto_1
    if-ltz v4, :cond_7

    .line 2052
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 2054
    .local v1, dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 2057
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_4

    .line 2058
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2063
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. missed/rejected call, conn.cause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2064
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. setting cause to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2066
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2067
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 2051
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2031
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4           #n:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasSendAgpsStartIntent:Z

    goto/16 :goto_0

    .line 2060
    .restart local v1       #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v4       #n:I
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v0       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_2

    .line 2068
    .end local v0           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_5
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 2070
    const-string v6, "2. local hangup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2071
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2072
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_3

    .line 2073
    :cond_6
    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_2

    .line 2075
    const-string v6, "3. invalid number"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2076
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2077
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_3

    .line 2082
    .end local v1           #dropConn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 2083
    const-string v6, "non-local disconnect"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2084
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 2088
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 2092
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dumpState()V

    .line 2094
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 1161
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 1389
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1163
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1165
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 1166
    const-string v13, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1168
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->needsPoll:Z

    .line 1169
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1170
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1176
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v13, "handle EVENT_CALL_PROGRESS_INFO"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1177
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleCallProgressInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1181
    :pswitch_3
    const-string v13, "handle EVENT_OPERATION_COMPLETE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1182
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1183
    .restart local v4       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1185
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    if-eqz v13, :cond_1

    .line 1186
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingReplaceRequest:Z

    .line 1195
    :cond_1
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1196
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto :goto_0

    .line 1202
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v13, "handle EVENT_SWITCH_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1204
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_4

    .line 1205
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v13, :cond_2

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePendingHangupRequest()V

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v14, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v14, v13, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1214
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1215
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resumeBackgroundAfterDialFailed()V

    .line 1216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1218
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1234
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1235
    sget-object v13, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1236
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 1237
    const-string v13, "notify precise call state changed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1220
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    if-eqz v13, :cond_3

    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v13 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1227
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isSwitchBeforeDial:Z

    .line 1228
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    .line 1229
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    .line 1230
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    goto :goto_1

    .line 1225
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedDialString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedClirMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->delayedUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v13 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_2

    .line 1243
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v13, "handle EVENT_CONFERENCE_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1244
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1245
    sget-object v13, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1246
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1247
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_6

    .line 1248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1251
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1252
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1256
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v13, "handle EVENT_SEPARATE_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1257
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1258
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1259
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_7

    .line 1260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1262
    :cond_7
    sget-object v13, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->NONE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1267
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1268
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_8

    .line 1269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1271
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1275
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v13, "handle EVENT_DIAL_CALL_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1277
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_9

    .line 1278
    const-string v13, "dial call failed!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleDialCallFailed()V

    .line 1281
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1285
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v13, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1286
    const/4 v3, 0x0

    .line 1287
    .local v3, FgDiscConn:I
    const/4 v2, 0x0

    .line 1289
    .local v2, BgDiscConn:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1291
    .restart local v4       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1293
    iget-object v13, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_c

    .line 1296
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    .line 1297
    const-string v13, "GSM"

    const-string v14, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x22

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x29

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x2a

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x2c

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x31

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const/16 v14, 0x3a

    if-eq v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    const v14, 0xffff

    if-ne v13, v14, :cond_b

    .line 1310
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v11

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    .line 1311
    .local v11, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v14, 0xc3ba

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v13

    const/16 v16, 0x1

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v13

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v15, v16

    const/4 v13, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v13

    invoke-static {v14, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1316
    .end local v11           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_b
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, s:I
    :goto_5
    if-ge v7, v12, :cond_e

    .line 1317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1318
    .local v6, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    invoke-virtual {v6, v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1316
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1300
    .end local v6           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7           #i:I
    .end local v12           #s:I
    :cond_c
    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    goto/16 :goto_3

    .line 1311
    .restart local v11       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_d
    const/4 v13, -0x1

    goto :goto_4

    .line 1321
    .end local v11           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #i:I
    .restart local v12       #s:I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    .local v9, j:I
    :goto_6
    if-ltz v9, :cond_10

    .line 1324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v5, v13

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1326
    .local v5, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_f

    .line 1327
    add-int/lit8 v3, v3, 0x1

    .line 1323
    :cond_f
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1331
    .end local v5           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v3

    const/4 v14, 0x1

    if-gt v13, v14, :cond_12

    .line 1334
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1337
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .local v10, k:I
    :goto_7
    if-ltz v10, :cond_14

    .line 1338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v5, v13

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1340
    .restart local v5       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_13

    .line 1341
    add-int/lit8 v2, v2, 0x1

    .line 1337
    :cond_13
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 1345
    .end local v5           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v2

    const/4 v14, 0x1

    if-gt v13, v14, :cond_16

    .line 1348
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    .line 1351
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1354
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   causeCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->causeCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   NWType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1355
    .local v8, info:Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->start()V

    goto/16 :goto_0

    .line 1365
    .end local v2           #BgDiscConn:I
    .end local v3           #FgDiscConn:I
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v7           #i:I
    .end local v8           #info:Ljava/lang/String;
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v12           #s:I
    :pswitch_a
    const-string v13, "handle EVENT_HANG_UP_RESULT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1366
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v13, :cond_17

    .line 1367
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1368
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    if-nez v13, :cond_17

    .line 1369
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1372
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateMptyState()V

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1377
    :pswitch_b
    const-string v13, "handle EVENT_INCOMING_CALL_INDICATION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1378
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleIncomingCallIndication(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1382
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 665
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 677
    .local v14, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v13, 0x0

    .line 678
    .local v13, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v10, 0x0

    .line 680
    .local v10, hasNonHangupStateChanged:Z
    const/4 v12, 0x0

    .line 681
    .local v12, needsPollDelay:Z
    const/4 v15, 0x0

    .line 683
    .local v15, unknownConnectionAppeared:Z
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v6, 0x0

    .local v6, curDC:I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .line 684
    .local v8, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v5, v16, v11

    .line 686
    .local v5, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v7, 0x0

    .line 689
    .local v7, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v6, v8, :cond_0

    .line 690
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 692
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v16, v0

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 693
    add-int/lit8 v6, v6, 0x1

    .line 699
    :cond_0
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: conn[i="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", dc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 702
    if-nez v5, :cond_a

    if-eqz v7, :cond_a

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 706
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: pendingMO="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    aput-object v17, v16, v11

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v11, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 712
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 716
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v6           #curDC:I
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v8           #dcSize:I
    .end local v10           #hasNonHangupStateChanged:Z
    .end local v11           #i:I
    .end local v12           #needsPollDelay:Z
    .end local v13           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v14           #polledCalls:Ljava/util/List;
    .end local v15           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 666
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 669
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 673
    .end local v14           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 664
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 695
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v6       #curDC:I
    .restart local v7       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v8       #dcSize:I
    .restart local v10       #hasNonHangupStateChanged:Z
    .restart local v11       #i:I
    .restart local v12       #needsPollDelay:Z
    .restart local v13       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v14       #polledCalls:Ljava/util/List;
    .restart local v15       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 721
    :catch_0
    move-exception v9

    .line 722
    .local v9, ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string v16, "GSM"

    const-string v17, "unexpected error on hangup"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 730
    .end local v9           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v17, v16, v11

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v13, v16, v11

    .line 754
    :cond_6
    :goto_4
    const/4 v10, 0x1

    .line 684
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 741
    :cond_8
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Phantom call appeared "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    iget-object v0, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 751
    :cond_9
    const/4 v15, 0x1

    goto :goto_4

    .line 755
    :cond_a
    if-eqz v5, :cond_b

    if-nez v7, :cond_b

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v17, v16, v11

    goto :goto_5

    .line 762
    :cond_b
    if-eqz v5, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v7, v2, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v17, v16, v11

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    aget-object v13, v16, v11

    .line 772
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 773
    :cond_d
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 775
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 776
    .local v4, changed:Z
    if-nez v10, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    const/4 v10, 0x1

    :goto_6
    goto/16 :goto_5

    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 802
    .end local v4           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 803
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 808
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 811
    :cond_11
    if-eqz v13, :cond_12

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 818
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    :goto_7
    if-ltz v11, :cond_17

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 821
    .restart local v5       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_15

    .line 824
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 825
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 831
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "missed/rejected call, conn.cause="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 832
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setting cause to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 835
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 818
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_13
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 827
    :cond_14
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v3       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_8

    .line 836
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_15
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 839
    sget-object v16, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_9

    .line 840
    :cond_16
    iget-object v0, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 843
    sget-object v16, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_9

    .line 848
    .end local v5           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_18

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 853
    :cond_18
    if-eqz v12, :cond_19

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 862
    :cond_19
    if-nez v13, :cond_1a

    if-eqz v10, :cond_1b

    .line 863
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 866
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 868
    if-eqz v15, :cond_1c

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 872
    :cond_1c
    if-nez v10, :cond_1d

    if-eqz v13, :cond_1

    .line 873
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 6
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1008
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1009
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no connections in call"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1012
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v3, :cond_2

    .line 1013
    const-string v3, "GSM"

    const-string v4, "hangup(GsmCall) hasPendingHangupRequest = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1016
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1018
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1021
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    .line 1022
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1023
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1024
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 1022
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v3, :cond_4

    .line 1031
    const-string v3, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1033
    const-string v3, "Hang up waiting or background call by connection index."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1035
    .local v1, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1062
    .end local v1           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1063
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1065
    :cond_3
    return-void

    .line 1037
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v3, :cond_6

    .line 1038
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1039
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1040
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1041
    const-string v3, "(foregnd) hangup dialing/alerting"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_2

    .line 1044
    :cond_5
    const-string v3, "(foregnd) hangup active"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_2

    .line 1047
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v3, :cond_8

    .line 1048
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1049
    const-string v3, "(backgnd) hangup all connections"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_2

    .line 1052
    :cond_7
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 1053
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 1054
    const-string v3, "(backgnd) hangup waiting/background"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_2

    .line 1058
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GsmCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "does not belong to GsmCallTracker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 936
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 937
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 945
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 947
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 948
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 966
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 967
    return-void

    .line 952
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 958
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 959
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 961
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupActiveCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2179
    const-string v0, "hangupActiveCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2182
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v0, :cond_1

    .line 2186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 2191
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 2192
    return-void

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0
.end method

.method hangupAll()V
    .locals 2

    .prologue
    .line 2169
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    .line 2171
    return-void
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1117
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1118
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1119
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1120
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1122
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1123
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupAllEx()V
    .locals 2

    .prologue
    .line 2174
    const-string v0, "hangupAllEx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAllEx(Landroid/os/Message;)V

    .line 2176
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1084
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1085
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1086
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1087
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1107
    :goto_1
    return-void

    .line 1084
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1094
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 1095
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1096
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 1097
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1094
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1102
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1103
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 1104
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1105
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 1106
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1103
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1112
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1076
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1079
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1069
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1072
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1393
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 303
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 305
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 289
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 291
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 279
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 281
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 506
    return-void

    .line 504
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2220
    const-string v0, "resetAccumulatedCallMeter"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2222
    return-void
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 972
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V

    .line 979
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SEPERATE:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 983
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2215
    const-string v0, "setAccumulatedCallMeterMaximum"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2217
    return-void
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 7
    .parameter "accept"

    .prologue
    const/4 v6, 0x0

    .line 2234
    const/4 v0, 0x0

    .line 2236
    .local v0, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2238
    if-eqz p1, :cond_0

    .line 2239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 2241
    .local v1, pid:I
    const/4 v0, 0x0

    .line 2242
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2247
    .end local v1           #pid:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 2248
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTCallId:I

    .line 2249
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMTSeqNum:I

    .line 2250
    return-void

    .line 2245
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 992
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 995
    return-void
.end method

.method setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2225
    const-string v2, "setPpuAndCurrency"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2226
    const-string v0, ""

    .line 2227
    .local v0, cur:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2230
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2231
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 512
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 520
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;->SWAP:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->crssAction:Lcom/android/internal/telephony/gsm/GsmCallTracker$CrssAction;

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isPendingSwap:Z

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->isMptyCall:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmCall;->lastMptyState:Z

    .line 527
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 310
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 296
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 286
    return-void
.end method

.method updatePendingHangupRequest()V
    .locals 2

    .prologue
    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2258
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 2259
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 2260
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    .line 2261
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hasPendingHangupRequest:Z

    .line 2266
    :cond_0
    return-void
.end method

.method voiceAccept()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1515
    const-string v1, "voiceAccept"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1516
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1518
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->voiceAccept(ILandroid/os/Message;)V

    .line 1520
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1501
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x12

    .line 1441
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 1443
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1444
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial VT call in current state"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1447
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_1

    .line 1448
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "can only dial VT call in idle state"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1451
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v5, v6, p1, p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1452
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->isVideo:Z

    .line 1453
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 1455
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v6, 0x4e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 1459
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1493
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1494
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1496
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v5

    .line 1465
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1466
    .local v3, len:I
    const/4 v2, 0x0

    .line 1467
    .local v2, i:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1468
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1470
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    .line 1471
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1473
    .local v0, c:C
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_5

    .line 1474
    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1470
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1475
    :cond_5
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_6

    .line 1476
    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1478
    :cond_6
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_7

    if-nez v1, :cond_4

    .line 1479
    :cond_7
    const/4 v1, 0x1

    .line 1480
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1485
    .end local v0           #c:C
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1487
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, p2, p3, v7}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1489
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, p2, p3, v7}, Lcom/android/internal/telephony/CommandsInterface;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
