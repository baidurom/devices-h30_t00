.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECOVERY:I = 0x64

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

.field private mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockState:I

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mSimId:I

.field private mSimRemovedReason:I

.field private mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.sim.state"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.state.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.state.3"

    aput-object v1, v0, v6

    const-string v1, "gsm.sim.state.4"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 108
    iput v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 118
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 123
    iput v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRemovedReason:I

    .line 124
    new-instance v0, Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/ChrCommonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 125
    new-instance v0, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 128
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 131
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 136
    invoke-interface {p2, p0, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 7
    .parameter "context"
    .parameter "ci"
    .parameter "simId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.sim.state"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.state.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.state.3"

    aput-object v1, v0, v6

    const-string v1, "gsm.sim.state.4"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 108
    iput v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 118
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 123
    iput v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRemovedReason:I

    .line 124
    new-instance v0, Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/ChrCommonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 125
    new-instance v0, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 142
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 145
    iput p3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    .line 146
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 148
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    invoke-interface {p2, p0, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 154
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 409
    monitor-exit v2

    .line 423
    :goto_0
    return-void

    .line 412
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v1, "simId"

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 420
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 422
    monitor-exit v2

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private broadcastRadioOffIntent()V
    .locals 3

    .prologue
    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RADIO_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "slotId"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_RADIO_OFF  sim id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 896
    return-void
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 528
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 536
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 529
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 530
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 531
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 532
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 533
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 534
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 535
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 545
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 558
    :goto_0
    :pswitch_0
    return-object v0

    .line 546
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 547
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 549
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 550
    :pswitch_4
    const-string v0, "NETWORK"

    goto :goto_0

    .line 551
    :pswitch_5
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 552
    :pswitch_6
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 553
    :pswitch_7
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 554
    :pswitch_8
    const-string v0, "SIM"

    goto :goto_0

    .line 557
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getSimRemovedApduIns(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 1021
    packed-switch p1, :pswitch_data_0

    .line 1029
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1023
    :pswitch_0
    const-string v0, "NULL"

    goto :goto_0

    .line 1025
    :pswitch_1
    const-string v0, "A4"

    goto :goto_0

    .line 1027
    :pswitch_2
    const-string v0, "DC"

    goto :goto_0

    .line 1021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSimRemovedReaseon(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 1009
    packed-switch p1, :pswitch_data_0

    .line 1017
    const-string v0, "UNKNOW"

    :goto_0
    return-object v0

    .line 1011
    :pswitch_0
    const-string v0, "CHECKERROR"

    goto :goto_0

    .line 1013
    :pswitch_1
    const-string v0, "OVERRUN"

    goto :goto_0

    .line 1015
    :pswitch_2
    const-string v0, "TIMEOUT"

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1001
    const-string v1, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void

    .line 1001
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1005
    const-string v1, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void

    .line 1005
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_0

    .line 450
    monitor-exit v3

    .line 469
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v1

    .line 453
    .local v1, pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 454
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 455
    monitor-exit v3

    goto :goto_0

    .line 468
    .end local v1           #pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 458
    .restart local v1       #pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 459
    .local v0, appState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 468
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 462
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 465
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    :cond_2
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExternalState(): newState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 516
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 3
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " override = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 476
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    .line 477
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getNetworkPersoType()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkLockState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->setSimRemovedEvent()V

    .line 489
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getNetworkPersoType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockState:I

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->ICCCARDPROXY_PROPERTY_SIM_STATE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v0, :cond_2

    .line 499
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    monitor-exit v1

    .line 511
    :goto_0
    return-void

    .line 481
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSimRemovedEvent()V
    .locals 3

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 1035
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;-><init>()V

    .line 1036
    .local v0, cSIM_PERFORMANCE_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 1037
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1038
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMLostCause:Lcom/huawei/device/chrlog/ENCSIMLostCause;

    iget v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimRemovedReason:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getSimRemovedReaseon(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCSIMLostCause;->setValue(Ljava/lang/String;)V

    .line 1039
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMCardType:Lcom/huawei/device/chrlog/ENCSIMCardType;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCSIMCardType;->setValue(Ljava/lang/String;)V

    .line 1040
    iget-object v1, v0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enApduIns:Lcom/huawei/device/chrlog/ENCApduIns;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->getSimRemovedApduIns(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/chrlog/ENCApduIns;->setValue(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-static {}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getInstance()Lcom/android/internal/telephony/ProtocolAbnormalLog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->writeAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 1046
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 402
    :cond_5
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 380
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 329
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v0, :cond_3

    .line 346
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 350
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 356
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 359
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 366
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 377
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 6

    .prologue
    .line 297
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 298
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 299
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 300
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 301
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 302
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 304
    iget v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_2

    .line 311
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 313
    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 314
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 315
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateExternalState()V

    .line 320
    monitor-exit v5

    .line 321
    return-void

    .line 320
    .end local v0           #newApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v1           #newCard:Lcom/android/internal/telephony/UiccCard;
    .end local v2           #newRecords:Lcom/android/internal/telephony/IccRecords;
    .end local v3           #state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateQuietMode()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 192
    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 193
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 195
    .local v3, oldQuietMode:Z
    const/4 v0, -0x1

    .line 196
    .local v0, cdmaSource:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 198
    .local v1, isLteOnCdmaMode:Z
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    if-ne v6, v4, :cond_2

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, newQuietMode:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 214
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v6, :cond_6

    if-ne v2, v4, :cond_6

    .line 217
    const-string v4, "Switching to QuietMode."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 218
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 219
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 229
    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: QuietMode is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (app_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isLteOnCdmaMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cdmaSource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 233
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 234
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 235
    monitor-exit v5

    .line 236
    return-void

    .end local v1           #isLteOnCdmaMode:Z
    .end local v2           #newQuietMode:Z
    :cond_1
    move v1, v2

    .line 196
    goto :goto_0

    .line 202
    .restart local v1       #isLteOnCdmaMode:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 203
    const-string/jumbo v6, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 204
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 206
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 209
    :goto_3
    if-ne v0, v4, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    if-nez v1, :cond_4

    move v2, v4

    .restart local v2       #newQuietMode:Z
    :cond_4
    goto :goto_1

    .line 206
    .end local v2           #newQuietMode:Z
    :cond_5
    const/4 v0, -0x1

    goto :goto_3

    .line 220
    .restart local v2       #newQuietMode:Z
    :cond_6
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-ne v6, v4, :cond_0

    if-nez v2, :cond_0

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 225
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_2

    .line 235
    .end local v0           #cdmaSource:I
    .end local v1           #isLteOnCdmaMode:Z
    .end local v2           #newQuietMode:Z
    .end local v3           #oldQuietMode:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryIccNetworkLock(): category =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 855
    iget-object v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccCardApplication;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 864
    :cond_0
    monitor-exit v9

    .line 865
    :goto_0
    return-void

    .line 858
    :cond_1
    if-eqz p7, :cond_0

    .line 859
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v0, "ICC card is absent."

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 860
    .local v8, e:Ljava/lang/Exception;
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 861
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 862
    monitor-exit v9

    goto :goto_0

    .line 864
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting extend intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 430
    monitor-exit v2

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED_EXTEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v1, "simId"

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED_EXTEND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 441
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 443
    monitor-exit v2

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 806
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 815
    :cond_0
    monitor-exit v2

    .line 816
    :goto_0
    return-void

    .line 809
    :cond_1
    if-eqz p3, :cond_0

    .line 810
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 812
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 813
    monitor-exit v2

    goto :goto_0

    .line 815
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 792
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 801
    :cond_0
    monitor-exit v2

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_1
    if-eqz p3, :cond_0

    .line 796
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 797
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 798
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 799
    monitor-exit v2

    goto :goto_0

    .line 801
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 2
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    .line 979
    :cond_0
    return-void
.end method

.method public disableSimMissingNotification()V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccRecovery(Landroid/os/Handler;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 967
    :cond_0
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 986
    :cond_0
    return-void
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 758
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 757
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 747
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 750
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 749
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    monitor-exit v1

    return-object v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    monitor-exit v1

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mSimId:I

    return v0
.end method

.method public getNetworkPersoType()I
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 915
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 930
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 917
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 919
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 921
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 923
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 925
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 824
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v1

    return-object v0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 240
    const-string v0, "IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 244
    :sswitch_0
    const-string v0, "handleMessage (EVENT_RADIO_OFF_OR_UNAVAILABLE)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 246
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastRadioOffIntent()V

    goto :goto_0

    .line 252
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 258
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 263
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 266
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 267
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 270
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 273
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 276
    :sswitch_7
    const-string v0, "LOADED"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "LOADED"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :sswitch_8
    const-string v0, "IMSI"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "IMSI"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 285
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 288
    :sswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 840
    const/4 v0, 0x1

    monitor-exit v1

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/UiccCard;->iccGetATR(Landroid/os/Message;)V

    .line 992
    :cond_0
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 830
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 832
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 831
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFDNExist()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 934
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v2, :cond_0

    .line 935
    const-string v2, "isFDNExist mIccRecords == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 948
    :goto_0
    return v1

    .line 939
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    .line 940
    .local v0, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    const-string v1, "isFDNExist return true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 943
    const/4 v1, 0x1

    goto :goto_0

    .line 947
    :cond_1
    const-string v2, "isFDNExist return false"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPhbReady()Z
    .locals 3

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 900
    .local v0, isPhbReady:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady() isPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 901
    return v0

    .line 899
    .end local v0           #isPhbReady:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->isPhbReady()Z

    move-result v0

    goto :goto_0

    .line 900
    .restart local v0       #isPhbReady:Z
    :cond_1
    const-string v1, "false"

    goto :goto_1
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 973
    :cond_0
    return-void
.end method

.method public openLogicalChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/UiccCard;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    .line 997
    :cond_0
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 599
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 601
    :cond_0
    monitor-exit v2

    .line 602
    return-void

    .line 601
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 660
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 665
    :cond_0
    monitor-exit v2

    .line 666
    return-void

    .line 665
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 634
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 635
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 642
    :cond_0
    monitor-exit v2

    .line 643
    return-void

    .line 642
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 613
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 615
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 620
    :cond_0
    monitor-exit v2

    .line 621
    return-void

    .line 620
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 778
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 787
    :cond_0
    monitor-exit v2

    .line 788
    :goto_0
    return-void

    .line 781
    :cond_1
    if-eqz p3, :cond_0

    .line 782
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 784
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 785
    monitor-exit v2

    goto :goto_0

    .line 787
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 764
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 773
    :cond_0
    monitor-exit v2

    .line 774
    :goto_0
    return-void

    .line 767
    :cond_1
    if-eqz p3, :cond_0

    .line 768
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 770
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 771
    monitor-exit v2

    goto :goto_0

    .line 773
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "category"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "onComplete"

    .prologue
    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIccNetworkEnabled(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lockop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data_imsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gid1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gid2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 876
    iget-object v10, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/UiccCardApplication;->setIccNetworkLockEnabled(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 885
    :cond_0
    monitor-exit v10

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_1
    if-eqz p7, :cond_0

    .line 880
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 881
    .local v9, e:Ljava/lang/Exception;
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 882
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    .line 883
    monitor-exit v10

    goto :goto_0

    .line 885
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .parameter "radioTech"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 742
    :cond_0
    monitor-exit v2

    .line 743
    :goto_0
    return-void

    .line 736
    :cond_1
    if-eqz p2, :cond_0

    .line 737
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 739
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 740
    monitor-exit v2

    goto :goto_0

    .line 742
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 686
    :cond_0
    monitor-exit v2

    .line 687
    :goto_0
    return-void

    .line 680
    :cond_1
    if-eqz p2, :cond_0

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 683
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 684
    monitor-exit v2

    goto :goto_0

    .line 686
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 705
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 714
    :cond_0
    monitor-exit v2

    .line 715
    :goto_0
    return-void

    .line 708
    :cond_1
    if-eqz p2, :cond_0

    .line 709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 711
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 712
    monitor-exit v2

    goto :goto_0

    .line 714
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 700
    :cond_0
    monitor-exit v2

    .line 701
    :goto_0
    return-void

    .line 694
    :cond_1
    if-eqz p3, :cond_0

    .line 695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 697
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 698
    monitor-exit v2

    goto :goto_0

    .line 700
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 719
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 728
    :cond_0
    monitor-exit v2

    .line 729
    :goto_0
    return-void

    .line 722
    :cond_1
    if-eqz p3, :cond_0

    .line 723
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 725
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 726
    monitor-exit v2

    goto :goto_0

    .line 728
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 672
    monitor-exit v1

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 649
    monitor-exit v1

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRecovery(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 626
    monitor-exit v1

    .line 627
    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
