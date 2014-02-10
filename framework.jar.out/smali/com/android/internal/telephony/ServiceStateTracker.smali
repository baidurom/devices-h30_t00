.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;
    }
.end annotation


# static fields
.field protected static final DATA_ACCESS_CDMA_1xRTT:I = 0x6

.field protected static final DATA_ACCESS_CDMA_EvDo_0:I = 0x7

.field protected static final DATA_ACCESS_CDMA_EvDo_A:I = 0x8

.field protected static final DATA_ACCESS_CDMA_EvDo_B:I = 0xc

.field protected static final DATA_ACCESS_CDMA_IS95A:I = 0x4

.field protected static final DATA_ACCESS_CDMA_IS95B:I = 0x5

.field protected static final DATA_ACCESS_EDGE:I = 0x2

.field protected static final DATA_ACCESS_GPRS:I = 0x1

.field protected static final DATA_ACCESS_HSDPA:I = 0x9

.field protected static final DATA_ACCESS_HSPA:I = 0xb

.field protected static final DATA_ACCESS_HSUPA:I = 0xa

.field protected static final DATA_ACCESS_UMTS:I = 0x3

.field protected static final DATA_ACCESS_UNKNOWN:I = 0x0

.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x64

.field protected static final EVENT_DISABLE_EMMRRS_STATUS:I = 0x69

.field protected static final EVENT_ENABLE_EMMRRS_STATUS:I = 0x6a

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_NITZ_TIME:I = 0xc9

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field protected static final EVENT_GET_SIM_RECOVERY_ON:I = 0x6c

.field protected static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMEI_LOCK:I = 0x68

.field protected static final EVENT_INVALID_SIM_INFO:I = 0x65

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_PS_NETWORK_STATE_CHANGED:I = 0x66

.field protected static final EVENT_QUERY_NITZ_TIME:I = 0xc8

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SEARCH_WHEN_NO_SERVICE:I = 0x12e

.field protected static final EVENT_SET_IVSR_FOR_OOS:I = 0x12c

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SET_SIM_RECOVERY_ON:I = 0x6b

.field protected static final EVENT_SIGNAL_SMOOTH_UPDATE:I = 0x12d

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UPDATE_SELECTION_MODE:I = 0x67

.field static FLAG_SIGNAL:I = 0x0

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field protected static final POLL_PERIOD_MILLIS:I = 0x2710

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final SIGNAL_REFRESH_INTERVAL_MILLS:I = 0x1388

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field protected cm:Lcom/android/internal/telephony/CommandsInterface;

.field protected dontPollSignalStrength:Z

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected final mCellInfo:Landroid/telephony/CellInfo;

.field private mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

.field private mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

.field protected mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected mLastCellInfo:Landroid/telephony/CellInfo;

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mNewRilRadioTechnology:I

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field protected mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field protected mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field protected mRegState:I

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field protected mRilRadioTechnology:I

.field protected mRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mSignalStrength:Landroid/telephony/SignalStrength;

.field protected mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected newSS:Landroid/telephony/ServiceState;

.field protected pollingContext:[I

.field public ss:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 264
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bf"

    aput-object v2, v0, v1

    const-string v1, "ci"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    .line 312
    sput v3, Lcom/android/internal/telephony/ServiceStateTracker;->FLAG_SIGNAL:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 3
    .parameter "phoneBase"
    .parameter "ci"
    .parameter "cellInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfo:Landroid/telephony/CellInfo;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 154
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 156
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 157
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 158
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 160
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 162
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 166
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 255
    new-instance v0, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegState:I

    .line 352
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 316
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 317
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x2a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 323
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 324
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 326
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;I)V
    .locals 3
    .parameter "phoneBase"
    .parameter "ci"
    .parameter "cellInfo"
    .parameter "mSimId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfo:Landroid/telephony/CellInfo;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 154
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 156
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 157
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 158
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 160
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 162
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 166
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 255
    new-instance v0, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegState:I

    .line 352
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 330
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 331
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 332
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x2a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p4}, Landroid/telephony/SignalStrength;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 337
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p4}, Landroid/telephony/ServiceState;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 338
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p4}, Landroid/telephony/ServiceState;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 339
    return-void
.end method

.method private setMMEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;Ljava/lang/String;I)V
    .locals 2
    .parameter "cEXCEPTION_MM_EVENT"
    .parameter "domain"
    .parameter "rejectcause"

    .prologue
    .line 997
    if-eqz p1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 999
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 1000
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1001
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getRac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1002
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1003
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getTac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1004
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getEci()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 1019
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1020
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 1021
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->enRejectDomain:Lcom/huawei/device/chrlog/ENCRejectDomain;

    invoke-virtual {v0, p2}, Lcom/huawei/device/chrlog/ENCRejectDomain;->setValue(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->ucRejectCause:Lcom/huawei/device/chrlog/LogByte;

    invoke-virtual {v0, p3}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1023
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getNetworkRAT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCNetworkRAT;->setValue(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1025
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 1026
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMCC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1027
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMNC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 1029
    :cond_0
    return-void
.end method

.method private setNetLostEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;)V
    .locals 2
    .parameter "cCOVERAGE_LOST_NETWROK_EVENT"

    .prologue
    .line 964
    if-eqz p1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 966
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 967
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 968
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getRac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 969
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 970
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getTac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 971
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getEci()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 986
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 987
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 988
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->enOOSCause:Lcom/huawei/device/chrlog/ENCOOSCause;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOOSCause(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCOOSCause;->setValue(Ljava/lang/String;)V

    .line 989
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getNetworkRAT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCNetworkRAT;->setValue(Ljava/lang/String;)V

    .line 990
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 991
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 992
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMCC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 993
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMNC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 995
    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 757
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .prologue
    .line 870
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 871
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 345
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 828
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRilRadioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewRilRadioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCurrentDataConnectionState()I
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method public getOOSCause(I)Ljava/lang/String;
    .locals 2
    .parameter "regstate"

    .prologue
    .line 930
    const/4 v0, 0x1

    .line 931
    .local v0, reason:I
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x2

    .line 934
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 942
    const-string v1, "DEFAULT"

    :goto_0
    return-object v1

    .line 936
    :pswitch_0
    const-string v1, "NOSIGNAL"

    goto :goto_0

    .line 938
    :pswitch_1
    const-string v1, "PROTOCOLCAUSE"

    goto :goto_0

    .line 940
    :pswitch_2
    const-string v1, "SOFTWAREFAILUE"

    goto :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v1

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    monitor-exit v1

    return-object v0

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 552
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 534
    :sswitch_0
    monitor-enter p0

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v0, v1, :cond_0

    .line 537
    const-string v0, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 539
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 545
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 542
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!= tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 549
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    goto :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract hangupAndPowerOff()V
.end method

.method public abstract isConcurrentVoiceAndDataAllowed()Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifySignalStrength()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, notified:Z
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v8

    .line 356
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7, v9}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 362
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v7

    const/16 v9, 0x63

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_1

    .line 363
    const-string v7, "Ignore rssi 99(unknown)"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    return v4

    .line 367
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifySignalStrength: mSignalStrength.getLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, doRecord:Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v5

    .line 373
    .local v5, ss:I
    const/4 v0, 0x7

    .line 374
    .local v0, delta:I
    const-string v3, ""

    .line 380
    .local v3, info:Ljava/lang/String;
    sget v7, Lcom/android/internal/telephony/ServiceStateTracker;->FLAG_SIGNAL:I

    if-ne v7, v10, :cond_3

    const/16 v7, -0x5f

    if-ge v5, v7, :cond_3

    .line 382
    const/4 v1, 0x1

    .line 383
    const/4 v7, 0x0

    sput v7, Lcom/android/internal/telephony/ServiceStateTracker;->FLAG_SIGNAL:I

    .line 384
    const-string/jumbo v7, "signal becomes bad, start to record"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   bad singal = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   start recording\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    :goto_1
    if-eqz v1, :cond_2

    .line 397
    move-object v6, v3

    .line 398
    .local v6, usingInfo:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/ServiceStateTracker$1;

    invoke-direct {v7, p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker$1;->start()V

    .line 406
    .end local v6           #usingInfo:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    .line 407
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v7, v9}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 408
    const/4 v4, 0x1

    goto :goto_0

    .line 386
    :cond_3
    sget v7, Lcom/android/internal/telephony/ServiceStateTracker;->FLAG_SIGNAL:I

    if-nez v7, :cond_4

    const/16 v7, -0x58

    if-le v5, v7, :cond_4

    .line 388
    const/4 v1, 0x1

    .line 389
    const/4 v7, 0x1

    sput v7, Lcom/android/internal/telephony/ServiceStateTracker;->FLAG_SIGNAL:I

    .line 390
    const-string/jumbo v7, "signal becomes good, start to record"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   good singal = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   end recording\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_1

    .line 393
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 411
    .end local v0           #delta:I
    .end local v1           #doRecord:Z
    .end local v3           #info:Ljava/lang/String;
    .end local v5           #ss:I
    :catch_0
    move-exception v2

    .line 412
    .local v2, ex:Ljava/lang/NullPointerException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "SignalStrength not notified"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 3
    .parameter "ar"
    .parameter "isGsm"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSignalStrengthResult():  LastSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 725
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getNeededCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const-string v0, "Shall notify in 5s"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 730
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSignalStrengthResult():new mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 745
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    return v0

    .line 737
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 738
    if-eqz p2, :cond_3

    .line 739
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 741
    :cond_3
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 3
    .parameter "dcTracker"

    .prologue
    .line 667
    monitor-enter p0

    .line 668
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 674
    const-string v1, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 690
    :cond_0
    :goto_0
    monitor-exit p0

    .line 691
    return-void

    .line 677
    :cond_1
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 678
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 679
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x26

    iput v1, v0, Landroid/os/Message;->what:I

    .line 680
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 681
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const-string v1, "Wait upto 5s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 690
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 685
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    :try_start_1
    const-string v1, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_0

    .line 701
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 702
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 705
    const/4 v0, 0x1

    monitor-exit p0

    .line 707
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 474
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 576
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 582
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 594
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 600
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 612
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 614
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 618
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 649
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 650
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 655
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 630
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 633
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 636
    :cond_0
    return-void
.end method

.method public registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 450
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 456
    :cond_0
    return-void
.end method

.method public registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 429
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 435
    :cond_0
    return-void
.end method

.method public abstract removeGprsConnTypeRetry()V
.end method

.method protected saveNitzTimeZoneToDB(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .parameter "cr"
    .parameter "timeZoneId"

    .prologue
    const/4 v4, 0x3

    .line 878
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, mccMnc:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 881
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, mcc:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;

    invoke-direct {v2, p1, v0, p2}, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .local v2, thread:Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->start()V

    .line 885
    .end local v0           #mcc:Ljava/lang/String;
    .end local v2           #thread:Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;
    :cond_0
    return-void
.end method

.method protected setLastSignalStrengthDefaultValues(Z)V
    .locals 2
    .parameter "isGsm"

    .prologue
    .line 921
    if-eqz p1, :cond_0

    .line 922
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method public setMMEvent(Ljava/lang/String;I)V
    .locals 3
    .parameter "domain"
    .parameter "rejectcause"

    .prologue
    .line 955
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;-><init>()V

    .line 956
    .local v0, cEXCEPTION_MM_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->setMMEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_EXCEPTION_MM_EVENT;Ljava/lang/String;I)V

    .line 957
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-static {}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getInstance()Lcom/android/internal/telephony/ProtocolAbnormalLog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->writeAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 962
    return-void
.end method

.method public setNetLostEvent()V
    .locals 3

    .prologue
    .line 946
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;-><init>()V

    .line 947
    .local v0, cCOVERAGE_LOST_NETWROK_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setNetLostEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_COVERAGE_LOST_NETWROK_PERFORMANCE_EVENT;)V

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-static {}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getInstance()Lcom/android/internal/telephony/ProtocolAbnormalLog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->writeAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 953
    return-void
.end method

.method protected abstract setPowerStateToDesired()V
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 481
    return-void
.end method

.method public setRadioPower(ZZ)V
    .locals 2
    .parameter "power"
    .parameter "shutdown"

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 762
    if-eqz p2, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOff(Landroid/os/Message;)V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    goto :goto_0
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .parameter "phoneBase"
    .parameter "operatorNumeric"
    .parameter "prevOperatorNumeric"
    .parameter "needToFixTimeZone"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 789
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 802
    .local v4, mcc:I
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 808
    .local v5, prevMcc:I
    :goto_0
    const/4 v3, 0x0

    .line 809
    .local v3, iccCardExist:Z
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v9, :cond_0

    .line 810
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v9, v10, :cond_3

    move v3, v7

    .line 814
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    :cond_2
    move v6, v7

    .line 816
    .local v6, retVal:Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 817
    .local v0, ctm:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldFixTimeZoneNow: retVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " iccCardExist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevOperatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevMcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needToFixTimeZone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ltod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 824
    .end local v0           #ctm:J
    .end local v3           #iccCardExist:Z
    .end local v4           #mcc:I
    .end local v5           #prevMcc:I
    .end local v6           #retVal:Z
    :goto_3
    return v6

    .line 790
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " retVal=false"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v6, v8

    .line 795
    goto :goto_3

    .line 803
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #mcc:I
    :catch_1
    move-exception v2

    .line 804
    .restart local v2       #e:Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    .restart local v5       #prevMcc:I
    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #iccCardExist:Z
    :cond_3
    move v3, v8

    .line 810
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 814
    goto/16 :goto_2
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 585
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 603
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 621
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 659
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 640
    return-void
.end method

.method public unregisterForRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 460
    return-void
.end method

.method public unregisterForRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 439
    return-void
.end method

.method protected abstract updateSpnDisplay()V
.end method
