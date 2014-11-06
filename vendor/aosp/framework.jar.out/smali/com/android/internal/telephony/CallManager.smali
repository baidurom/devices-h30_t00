.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$3;,
        Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CALL_WAITING2:I = 0xd0

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE2:I = 0xd3

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION:I = 0x7b

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION2:I = 0xdf

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISCONNECT2:I = 0xc8

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_DISPLAY_INFO2:I = 0xd1

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_ECM_TIMER_RESET2:I = 0xd7

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_INCOMING_RING2:I = 0xcc

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF2:I = 0xcf

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON2:I = 0xce

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_COMPLETE2:I = 0xd6

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_MMI_INITIATE2:I = 0xd5

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_NEW_RINGING_CONNECTION2:I = 0xca

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_POST_DIAL_CHARACTER2:I = 0xdb

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED2:I = 0xc9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7f

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE2:I = 0xe3

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RESEND_INCALL_MUTE2:I = 0xd4

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_RINGBACK_TONE2:I = 0xcd

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SERVICE_STATE_CHANGED2:I = 0xda

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SIGNAL_INFO2:I = 0xd2

.field private static final EVENT_SPEECH_INFO:I = 0x78

.field private static final EVENT_SPEECH_INFO2:I = 0xdc

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUBSCRIPTION_INFO_READY2:I = 0xd8

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_FAILED2:I = 0xd9

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x7c

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION2:I = 0xe0

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_UNKNOWN_CONNECTION2:I = 0xcb

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION:I = 0x7e

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION2:I = 0xe2

.field private static final EVENT_VT_REPLACE_DISCONNECT:I = 0x7d

.field private static final EVENT_VT_REPLACE_DISCONNECT2:I = 0xe1

.field private static final EVENT_VT_RING_INFO:I = 0x7a

.field private static final EVENT_VT_RING_INFO2:I = 0xde

.field private static final EVENT_VT_STATUS_INFO:I = 0x79

.field private static final EVENT_VT_STATUS_INFO2:I = 0xdd

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAXIMUM_SIM_COUNT:I = 0x4

.field private static final NOTIFICATION_ID_OFFSET:I = 0x64

.field private static final VDBG:Z = true

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field private bWaitingForHoldRequest:Z

.field private dtmfRequestIsStarted:Z

.field private final emptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private espeech_info:[I

.field private hasSetVtPara:Z

.field private m3GSwitchLockForPhoneCall:I

.field private mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants2:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mCurrentAudioMode:I

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mDualModemCall:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants2:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants2:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    new-instance v1, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 403
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 404
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 405
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    .line 172
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 175
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 193
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 208
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 211
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 214
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 217
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 240
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 243
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    .line 249
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 252
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 255
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 258
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    .line 261
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 264
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    .line 267
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 270
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants2:Landroid/os/RegistrantList;

    .line 273
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 276
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    .line 279
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    .line 282
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    .line 285
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    .line 288
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    .line 291
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    .line 294
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    .line 297
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    .line 300
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    .line 303
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    .line 306
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    .line 309
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    .line 312
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    .line 315
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    .line 318
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    .line 321
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    .line 324
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    .line 327
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    .line 330
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 333
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 336
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 341
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 342
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 343
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 344
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 345
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 346
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 347
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 348
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 349
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 350
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 351
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 352
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 353
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 354
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 355
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 356
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 357
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 358
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 359
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 360
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 361
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 362
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 363
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 364
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 365
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 366
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 370
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 373
    iput v4, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 380
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    .line 383
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 389
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 390
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 391
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 392
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 395
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 2421
    new-instance v2, Lcom/android/internal/telephony/CallManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$1;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    .line 410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 414
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 416
    const-string v2, "CallManager"

    const-string v3, "Initiate registrants array"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 419
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 421
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 427
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 428
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 429
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 431
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 437
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aput v4, v2, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 418
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 449
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CallManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/CallManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 17
    .parameter "phone"
    .parameter "dialString"

    .prologue
    .line 1434
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1435
    .local v13, serviceState:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    .line 1436
    .local v11, hasRingingCall:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    .line 1437
    .local v9, hasActiveCall:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    .line 1438
    .local v10, hasHoldingCall:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->isInCallMmiCommands(Ljava/lang/String;)Z

    move-result v6

    .line 1440
    .local v6, bIsInCallMmiCommands:Z
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    .line 1446
    .local v4, allLinesTaken:Z
    :goto_0
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 1447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1448
    .local v3, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1449
    .local v7, dialPhone:Lcom/android/internal/telephony/Phone;
    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    .line 1457
    .end local v3           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #dialPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 1458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_1

    .line 1459
    const/4 v6, 0x0

    .line 1463
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1466
    .local v8, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x0

    .line 1468
    .local v5, bECCExists:Z
    if-eqz v9, :cond_2

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, activeCallAddress:Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v5, 0x1

    .line 1474
    .end local v2           #activeCallAddress:Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v5, :cond_a

    const/4 v14, 0x3

    if-eq v13, v14, :cond_a

    if-eqz v11, :cond_3

    if-eqz v6, :cond_a

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->isInCallMmiCommands(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_5
    const/4 v12, 0x1

    .line 1483
    .local v12, result:Z
    :goto_3
    if-nez v12, :cond_6

    .line 1484
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "canDial serviceState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasRingingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasActiveCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasHoldingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " allLinesTaken="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fgCallState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bECCExists="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_6
    return v12

    .line 1440
    .end local v4           #allLinesTaken:Z
    .end local v5           #bECCExists:Z
    .end local v8           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v12           #result:Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1449
    .restart local v3       #activePhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #allLinesTaken:Z
    .restart local v7       #dialPhone:Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1470
    .end local v3           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #dialPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #activeCallAddress:Ljava/lang/String;
    .restart local v5       #bECCExists:Z
    .restart local v8       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1474
    .end local v2           #activeCallAddress:Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private checkIfExistsFollowingAction()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4897
    const/4 v0, 0x0

    .line 4898
    .local v0, result:Z
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActiveCallToBeHeld.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWaitingReasonForHold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 4904
    :cond_0
    const/4 v0, 0x1

    .line 4905
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 4906
    sget-object v1, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$CallManager$WaitingReasonForHold:[I

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4916
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 4918
    :cond_1
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    return v0

    .line 4908
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 4909
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0

    .line 4913
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0

    .line 4906
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearEspeechInfo()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 4851
    const/4 v4, 0x0

    .line 4852
    .local v4, isCleared:Z
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4855
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v5, v5, v3

    if-eqz v5, :cond_3

    .line 4859
    :cond_0
    if-ne v3, v8, :cond_1

    .line 4860
    const-string v5, "CallManager"

    const-string v6, "All espeech is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4865
    :cond_2
    const/4 v4, 0x1

    .line 4866
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 4867
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aput v9, v5, v3

    .line 4866
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4854
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4870
    :cond_4
    const/4 v2, 0x0

    .line 4871
    .local v2, curAudioMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4873
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 4874
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4875
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 4879
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_5
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] current audio mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    const/4 v5, 0x1

    if-eq v2, v5, :cond_7

    if-eqz v2, :cond_7

    .line 4882
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    .line 4883
    const-string v5, "CallManager"

    const-string v6, "[clearEspeechInfo]Set audio mode to Normal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #curAudioMode:I
    :cond_6
    :goto_2
    return v4

    .line 4885
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #curAudioMode:I
    :cond_7
    const-string v5, "CallManager"

    const-string v6, "[clearEspeechInfo] AP needs to set normal mode!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 785
    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2381
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2382
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2386
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2393
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2394
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 2398
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2256
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2257
    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2258
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2264
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2260
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2261
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    move-object v0, v2

    .line 2264
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getNewAudioModeIfMDSwap(I)I
    .locals 5
    .parameter "oldMode"

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x2

    .line 3058
    move v0, p1

    .line 3074
    .local v0, newMode:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v1, :cond_1

    .line 3078
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3079
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_3

    .line 3080
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 3097
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 3080
    goto :goto_0

    .line 3082
    :cond_3
    if-ne p1, v4, :cond_1

    .line 3083
    const/4 v0, 0x5

    goto :goto_0

    .line 3086
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phone"

    .prologue
    .line 468
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 471
    .end local p0
    :cond_0
    return-object p0
.end method

.method private getRegistrantsArrayIndex(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 3726
    add-int/lit8 v0, p1, 0x0

    .line 3727
    .local v0, index:I
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3734
    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRingingCallCount()I
    .locals 6

    .prologue
    .line 2402
    const/4 v1, 0x0

    .line 2404
    .local v1, count:I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2405
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2409
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRingingCallCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return v1
.end method

.method private handle3GSwitchLock()V
    .locals 6

    .prologue
    .line 4726
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4727
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 4729
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4730
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call IDLE, release 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    iget v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->release3GSwitchLock(I)Z

    .line 4732
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 4742
    :cond_0
    :goto_0
    return-void

    .line 4733
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4734
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->aquire3GSwitchLock()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 4735
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call not IDLE, acquire 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4737
    :catch_0
    move-exception v0

    .line 4738
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSpeechInfo(Landroid/os/Message;)Z
    .locals 16
    .parameter "msg"

    .prologue
    .line 4752
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4753
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v5, v13, v14

    .line 4754
    .local v5, infoType:I
    const/4 v11, 0x1

    .line 4755
    .local v11, result:Z
    packed-switch v5, :pswitch_data_0

    .line 4816
    const/4 v11, 0x0

    .line 4819
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 4820
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4821
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4823
    return v11

    .line 4757
    .end local v4           #index:I
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 4759
    .restart local v4       #index:I
    const/4 v4, 0x0

    .line 4761
    if-nez v4, :cond_1

    const/4 v8, 0x1

    .line 4762
    .local v8, oppositeIndex:I
    :goto_1
    if-nez v4, :cond_2

    const/4 v9, 0x4

    .line 4764
    .local v9, oppositeMode:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    .line 4765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v13, v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 4766
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0

    .line 4761
    .end local v8           #oppositeIndex:I
    .end local v9           #oppositeMode:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 4762
    .restart local v8       #oppositeIndex:I
    :cond_2
    const/4 v9, 0x2

    goto :goto_2

    .line 4777
    .end local v4           #index:I
    .end local v8           #oppositeIndex:I
    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v7, v13, 0x64

    .line 4779
    .local v7, newDualModemCall:I
    const/4 v7, 0x0

    .line 4782
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x1

    aput v14, v13, v7

    .line 4785
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v7, v13, :cond_3

    .line 4790
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    goto :goto_0

    .line 4795
    .end local v7           #newDualModemCall:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4796
    .local v3, context:Landroid/content/Context;
    const-string v13, "audio"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 4797
    .local v2, audioManager:Landroid/media/AudioManager;
    const/16 v13, 0xdc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-ne v13, v14, :cond_4

    const/4 v6, 0x2

    .line 4798
    .local v6, modem:I
    :goto_3
    const/4 v13, 0x2

    if-ne v5, v13, :cond_5

    const/4 v12, 0x1

    .line 4810
    .local v12, sid:I
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetModem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "GenerateSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4811
    .local v10, para:Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4812
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "para = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4797
    .end local v6           #modem:I
    .end local v10           #para:Ljava/lang/String;
    .end local v12           #sid:I
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 4798
    .restart local v6       #modem:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 4755
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2415
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEspeechTurnedOff(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4833
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 4834
    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    :goto_1
    return v2

    .end local v0           #i:I
    :cond_0
    move v0, v2

    .line 4833
    goto :goto_0

    .restart local v0       #i:I
    :cond_1
    move v2, v1

    .line 4834
    goto :goto_1
.end method

.method private isInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x1

    .line 4693
    const/4 v1, 0x0

    .line 4694
    .local v1, result:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4696
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    .line 4717
    :cond_0
    :goto_0
    return v1

    .line 4701
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4702
    const/4 v1, 0x1

    goto :goto_0

    .line 4708
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4709
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4696
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 496
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStatePowerOff()Z
    .locals 6

    .prologue
    .line 4955
    const/4 v0, 0x1

    .line 4957
    .local v0, bIsPowerOff:Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4958
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 4959
    :goto_0
    if-nez v0, :cond_0

    .line 4964
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isServiceStatePowerOff]bIsPowerOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    return v0

    .line 4958
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerOnePhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, result:Z
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 568
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BSPPackage]registerPhone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v1, 0x1

    .line 579
    :cond_0
    return v1
.end method

.method private registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 926
    const/16 v0, 0x64

    .line 928
    .local v0, eventDifference:I
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_3

    .line 929
    const/4 v1, 0x0

    .line 939
    .local v1, simId:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x65

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x64

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 941
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x66

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 942
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x67

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 943
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x68

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x69

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 945
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 947
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 949
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x70

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x71

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 951
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x72

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 952
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x75

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x76

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 955
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x78

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 956
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x79

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 957
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 959
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 961
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 962
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 965
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x77

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 971
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 972
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 973
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x74

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x73

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 977
    :cond_2
    return-void

    .line 932
    .end local v1           #simId:I
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    .restart local v1       #simId:I
    goto/16 :goto_0
.end method

.method private setAudioMode(I)V
    .locals 14
    .parameter "mode"

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x2

    const/4 v12, 0x1

    .line 2830
    const-string v9, "CallManager"

    const-string/jumbo v10, "setAudioMode enter..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2832
    .local v2, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 2835
    .local v6, isVTCall:Z
    if-nez v2, :cond_1

    .line 3053
    :cond_0
    :goto_0
    return-void

    .line 2836
    :cond_1
    const-string v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2837
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2838
    .local v3, curAudioMode:I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", current mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v9

    if-eq v3, v9, :cond_8

    .line 2844
    packed-switch p1, :pswitch_data_0

    .line 2926
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    .line 2927
    .local v4, fgIsAlive:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    .line 2930
    .local v1, bgIsAlive:Z
    if-nez p1, :cond_5

    if-nez v4, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2934
    const-string v9, "CallManager"

    const-string v10, "Do not need to switch normal mode for held call"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2848
    .end local v1           #bgIsAlive:Z
    .end local v4           #fgIsAlive:Z
    :pswitch_0
    if-eqz v3, :cond_3

    .line 2849
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v9

    if-ne v9, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2850
    const-string v9, "CallManager"

    const-string/jumbo v10, "no fg/bg call but ring call is exist, allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_3
    const-string v9, "CallManager"

    const-string/jumbo v10, "requestAudioFocus on STREAM_RING"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    invoke-virtual {v0, v8, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 2852
    :cond_4
    const-string v9, "CallManager"

    const-string/jumbo v10, "there is fg or bg call exist, we don\'t allow to set ringtone mode"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2894
    :pswitch_1
    const-string v9, "CallManager"

    const-string/jumbo v10, "requestAudioFocus on STREAM_VOICE_CALL"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    invoke-virtual {v0, v13, v8}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 2958
    .restart local v1       #bgIsAlive:Z
    .restart local v4       #fgIsAlive:Z
    :cond_5
    const-string v5, ""

    .line 2959
    .local v5, headsetState:Ljava/lang/String;
    if-le p1, v12, :cond_9

    .line 2967
    .local v8, value:I
    :goto_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/CallManager$2;

    invoke-direct {v10, p0, v8}, Lcom/android/internal/telephony/CallManager$2;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3008
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v7

    .line 3010
    .local v7, newMode:I
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set AudioManager mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    if-ne v12, p1, :cond_6

    .line 3014
    iget-boolean v9, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    if-eqz v9, :cond_6

    .line 3015
    const/4 v7, 0x2

    .line 3036
    :cond_6
    if-eq v3, v7, :cond_7

    .line 3037
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 3041
    :cond_7
    if-eq v12, v7, :cond_8

    .line 3043
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 3044
    iput-boolean v13, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 3048
    .end local v1           #bgIsAlive:Z
    .end local v4           #fgIsAlive:Z
    .end local v5           #headsetState:Ljava/lang/String;
    .end local v7           #newMode:I
    .end local v8           #value:I
    :cond_8
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_0

    .line 3049
    const-string v9, "CallManager"

    const-string v10, "abandonAudioFocus"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_0

    .restart local v1       #bgIsAlive:Z
    .restart local v4       #fgIsAlive:Z
    .restart local v5       #headsetState:Ljava/lang/String;
    :cond_9
    move v8, p1

    .line 2959
    goto :goto_2

    .line 2844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioModeDualModem(II)V
    .locals 3
    .parameter "devId"
    .parameter "mode"

    .prologue
    .line 3110
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3111
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 3130
    :goto_0
    return-void

    .line 3112
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3129
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0
.end method

.method private setAudioModeEarlierInAcceptCall()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1123
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1124
    const-string v4, "CallManager"

    const-string v5, "Speedup Audio Path enhancement: Context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1127
    const-string v5, "CallManager"

    const-string v6, "Speedup Audio Path enhancement"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1130
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 1131
    .local v2, currMode:I
    if-eq v2, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v5, :cond_0

    .line 1134
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 1138
    .local v3, newDualModemCall:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v3, v5, :cond_2

    .line 1139
    iput v3, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 1140
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set mDualModemCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-direct {p0, v5, v8}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    .line 1143
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    goto/16 :goto_0

    .line 1137
    .end local v3           #newDualModemCall:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setVTSpeechCall(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 4931
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v0

    .line 4932
    .local v1, vtStatus:I
    if-nez v1, :cond_0

    move v0, v3

    .line 4935
    .local v0, flag:I
    :cond_0
    if-ne v0, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v2, :cond_2

    .line 4948
    :cond_2
    return-void
.end method

.method private unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1007
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1009
    :cond_0
    const/16 v0, 0x77

    invoke-interface {p1, v3, v0, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1013
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1019
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1038
    .local v3, ringingPhone:Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptCall("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1044
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 1045
    .local v2, hasBgCall:Z
    :goto_0
    if-ne v0, v3, :cond_0

    move v4, v5

    .line 1048
    .local v4, sameChannel:Z
    :cond_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1053
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 1055
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1058
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1110
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #hasBgCall:Z
    .end local v4           #sameChannel:Z
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-nez v5, :cond_2

    .line 1111
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 1112
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1116
    :cond_2
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End acceptCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move v2, v4

    .line 1044
    goto :goto_0

    .line 1059
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #hasBgCall:Z
    .restart local v4       #sameChannel:Z
    :cond_4
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 1066
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1067
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1071
    :cond_6
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1074
    const-string v6, "CallManager"

    const-string v7, "Accept incoming call after the active call is held successfully."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1076
    sget-object v5, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1077
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1078
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 1081
    :cond_7
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 1084
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto :goto_1
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "heldCall"

    .prologue
    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1278
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1282
    :cond_0
    if-eqz p1, :cond_1

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1287
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1290
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "heldCall"

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1506
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1510
    :cond_0
    if-eqz p1, :cond_1

    .line 1511
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1514
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1417
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1418
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1420
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1307
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1313
    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 1314
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1322
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1315
    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1318
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 12
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1339
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1343
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    const-string v8, "CallManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " dial("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const-string v8, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1349
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1353
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1355
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    .line 1358
    .local v3, hasBgCall:Z
    :goto_0
    const-string v8, "CallManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasBgCall: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sameChannel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ne v0, v1, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    if-eq v0, v1, :cond_3

    .line 1363
    const/4 v4, 0x0

    .line 1364
    .local v4, isUssdNumber:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_2

    .line 1365
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v6, :cond_5

    move-object v6, v1

    .line 1366
    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdNumber(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    .line 1374
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 1376
    if-eqz v3, :cond_6

    .line 1377
    const-string v6, "CallManager"

    const-string v7, "Hangup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1389
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #hasBgCall:Z
    .end local v4           #isUssdNumber:Z
    :cond_3
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1392
    .local v5, result:Lcom/android/internal/telephony/Connection;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End dial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-object v5

    .end local v5           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    move v3, v7

    .line 1355
    goto/16 :goto_0

    .line 1367
    .restart local v3       #hasBgCall:Z
    .restart local v4       #isUssdNumber:Z
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_2

    move-object v6, v1

    .line 1368
    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {p2, v6}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v2

    .line 1369
    .local v2, cdmaMmiCode:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-eqz v2, :cond_2

    .line 1370
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isUssdRequest()Z

    move-result v4

    goto :goto_1

    .line 1382
    .end local v2           #cdmaMmiCode:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    :cond_6
    const-string v6, "CallManager"

    const-string v7, "Switch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1410
    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1531
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1540
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2245
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2250
    :cond_0
    :goto_0
    return-object v0

    .line 2246
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2318
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2320
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2324
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2345
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2346
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2348
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2333
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2336
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2356
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2357
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2360
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2281
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2282
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2287
    :cond_0
    :goto_0
    return-object v0

    .line 2283
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2305
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2306
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2310
    :cond_0
    :goto_0
    return-object v0

    .line 2306
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1613
    :goto_0
    return v0

    .line 1610
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1556
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 537
    const/4 v2, 0x1

    .line 539
    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 540
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 541
    .local v3, serviceState:I
    if-nez v3, :cond_2

    .line 543
    move v2, v3

    .line 558
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .line 545
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 548
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 550
    :cond_3
    move v2, v3

    goto :goto_0

    .line 552
    :cond_4
    if-ne v3, v5, :cond_0

    .line 553
    if-ne v2, v6, :cond_0

    .line 554
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    .prologue
    .line 514
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 516
    .local v2, s:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 517
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 518
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 519
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 520
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 523
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "activeCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4609
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupActiveCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4614
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4615
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 4617
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public hangupAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4570
    const-string v2, "CallManager"

    const-string v3, " hangupAll() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4575
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 4576
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_0

    .line 4579
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public hangupAllEx()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4585
    const/4 v0, 0x0

    .line 4588
    .local v0, bAtLeastOneNotIdle:Z
    const-string v3, "CallManager"

    const-string v4, " hangupAllEx() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4593
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phone.getState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 4595
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 4596
    const/4 v0, 0x1

    goto :goto_0

    .line 4600
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return v0
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1241
    const/4 v1, 0x0

    .line 1242
    .local v1, foregroundPhone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1245
    .local v0, backgroundPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1253
    if-ne v1, v0, :cond_1

    .line 1254
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1264
    :cond_0
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1258
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 2

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2043
    return-void
.end method

.method public registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3471
    return-void
.end method

.method public registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4200
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4201
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4202
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4204
    :cond_0
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2110
    return-void
.end method

.method public registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3538
    return-void
.end method

.method public registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4292
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4293
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4294
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4296
    :cond_0
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3159
    return-void
.end method

.method public registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3672
    return-void
.end method

.method public registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4488
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4489
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4490
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4492
    :cond_0
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1765
    return-void
.end method

.method public registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3194
    return-void
.end method

.method public registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3753
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3754
    .local v0, index:I
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForDisconnectEx, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3756
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3758
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2089
    return-void
.end method

.method public registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3517
    return-void
.end method

.method public registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4263
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4264
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4265
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4267
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1945
    return-void
.end method

.method public registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3373
    return-void
.end method

.method public registerForEcmTimerResetEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4053
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4054
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4055
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4057
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2023
    return-void
.end method

.method public registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3451
    return-void
.end method

.method public registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4172
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4173
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4174
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4176
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2003
    return-void
.end method

.method public registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3431
    return-void
.end method

.method public registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4144
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4145
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4146
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4148
    :cond_0
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1847
    return-void
.end method

.method public registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3275
    return-void
.end method

.method public registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3890
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3891
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3892
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3894
    :cond_0
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1927
    return-void
.end method

.method public registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3355
    return-void
.end method

.method public registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4024
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4025
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4026
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4028
    :cond_0
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1907
    return-void
.end method

.method public registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3335
    return-void
.end method

.method public registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3990
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3991
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3992
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3994
    :cond_0
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1826
    return-void
.end method

.method public registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3254
    return-void
.end method

.method public registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3856
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3857
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3858
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3860
    :cond_0
    return-void
.end method

.method public registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x0

    .line 795
    instance-of v3, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_3

    .line 796
    instance-of v3, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_1

    .line 798
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_0

    .line 799
    .local v0, count:I
    :goto_0
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[registerForPhoneStates]count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 801
    mul-int/lit8 v2, v1, 0x64

    .local v2, offset:I
    move-object v3, p1

    .line 802
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x65

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 803
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x64

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 804
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x66

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 805
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x67

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 806
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x68

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 807
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x69

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 808
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6a

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 809
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6b

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 810
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6d

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 811
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6e

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 812
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x71

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 813
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x72

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 814
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x75

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 815
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x76

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 816
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x77

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 819
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x78

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 820
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x79

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 821
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7a

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 822
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7b

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 823
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7c

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 824
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7d

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 825
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7e

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 826
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7f

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 798
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #offset:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 865
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 870
    :cond_2
    :goto_2
    return-void

    .line 868
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2172
    return-void
.end method

.method public registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3599
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3600
    return-void
.end method

.method public registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4376
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4377
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4378
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4380
    :cond_0
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1786
    return-void
.end method

.method public registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3215
    return-void
.end method

.method public registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3789
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3790
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3791
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3793
    :cond_0
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1885
    return-void
.end method

.method public registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3313
    return-void
.end method

.method public registerForResendIncallMuteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3954
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3955
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3956
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3958
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1869
    return-void
.end method

.method public registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3297
    return-void
.end method

.method public registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3925
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3926
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3927
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3929
    :cond_0
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1962
    return-void
.end method

.method public registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3390
    return-void
.end method

.method public registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4084
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4085
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4086
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4088
    :cond_0
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2066
    return-void
.end method

.method public registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3494
    return-void
.end method

.method public registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4232
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4233
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4234
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4236
    :cond_0
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3135
    return-void
.end method

.method public registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3618
    return-void
.end method

.method public registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4404
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4405
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4406
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4408
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2128
    return-void
.end method

.method public registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3556
    return-void
.end method

.method public registerForSubscriptionInfoReadyEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4320
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4321
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4322
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4324
    :cond_0
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1982
    return-void
.end method

.method public registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3410
    return-void
.end method

.method public registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4114
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4115
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4116
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4118
    :cond_0
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3167
    return-void
.end method

.method public registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3690
    return-void
.end method

.method public registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4516
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4517
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4518
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4520
    :cond_0
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1802
    return-void
.end method

.method public registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3231
    return-void
.end method

.method public registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3819
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3820
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3821
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3823
    :cond_0
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3175
    return-void
.end method

.method public registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3708
    return-void
.end method

.method public registerForVtReplaceDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4544
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4545
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4546
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4548
    :cond_0
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3151
    return-void
.end method

.method public registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3654
    return-void
.end method

.method public registerForVtRingInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4460
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4461
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4462
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4464
    :cond_0
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3143
    return-void
.end method

.method public registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3636
    return-void
.end method

.method public registerForVtStatusInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4432
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4433
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4434
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4436
    :cond_0
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .parameter "phone"

    .prologue
    .line 608
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 609
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 627
    :cond_1
    const/4 v1, 0x1

    .line 629
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1159
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1165
    .local v0, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1168
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1748
    const/4 v0, 0x1

    .line 1750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 1646
    const/4 v0, 0x0

    .line 1649
    .local v0, result:Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1655
    const/4 v0, 0x1

    .line 1659
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .parameter "phone"
    .parameter "ussdMessge"

    .prologue
    .line 1569
    const-string v0, "CallManager"

    const-string/jumbo v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioMode()V
    .locals 4

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, mode:I
    sget-object v2, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 768
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 779
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    .line 781
    return-void

    .line 723
    :pswitch_0
    const/4 v0, 0x1

    .line 724
    goto :goto_0

    .line 726
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 727
    .local v1, offhookPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 733
    :cond_1
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_2

    .line 735
    const/4 v0, 0x3

    goto :goto_0

    .line 738
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1621
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1631
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 1584
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1593
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1678
    .local v0, result:Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1684
    const/4 v0, 0x1

    .line 1693
    const-string v1, "CallManager"

    const-string v2, "dtmfRequestIsStarted = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1699
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1712
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    if-eqz v0, :cond_1

    .line 1719
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1721
    const-string v0, "CallManager"

    const-string v1, "dtmfRequestIsStarted = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_1
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1192
    const/4 v0, 0x0

    .line 1193
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1196
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1204
    :cond_0
    if-eqz p1, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1208
    :cond_1
    if-eqz v0, :cond_2

    .line 1209
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1212
    :cond_2
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    .line 1213
    if-eqz v0, :cond_4

    .line 1215
    const-string v2, "CallManager"

    const-string v3, "Switch held call to active one after the active call is held successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1217
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1218
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1219
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1227
    :cond_3
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void

    .line 1222
    :cond_4
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2798
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v4, "CallManager {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2801
    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2804
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2808
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 2813
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 2814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2817
    const-string v4, "\n- Foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2818
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2819
    const-string v4, " Background: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2821
    const-string v4, " Ringing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2824
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v4, "\n}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2051
    return-void
.end method

.method public unregisterForCallWaiting2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3479
    return-void
.end method

.method public unregisterForCallWaitingEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4213
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4214
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4215
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4217
    :cond_0
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2118
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3546
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4305
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4306
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4307
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4309
    :cond_0
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3163
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3680
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4501
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4502
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4503
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4505
    :cond_0
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1773
    return-void
.end method

.method public unregisterForDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3202
    return-void
.end method

.method public unregisterForDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3768
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3769
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3770
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3772
    :cond_0
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2099
    return-void
.end method

.method public unregisterForDisplayInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3527
    return-void
.end method

.method public unregisterForDisplayInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4277
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4278
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4279
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4281
    :cond_0
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1953
    return-void
.end method

.method public unregisterForEcmTimerReset2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3381
    return-void
.end method

.method public unregisterForEcmTimerResetEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4067
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4068
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4069
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4071
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2032
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3460
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4185
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4186
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4187
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4189
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2012
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3440
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4157
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4158
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4159
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4161
    :cond_0
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1856
    return-void
.end method

.method public unregisterForIncomingRing2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3284
    return-void
.end method

.method public unregisterForIncomingRingEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3904
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3905
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3906
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3908
    :cond_0
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1935
    return-void
.end method

.method public unregisterForMmiComplete2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3363
    return-void
.end method

.method public unregisterForMmiCompleteEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4038
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4039
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4040
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4042
    :cond_0
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1915
    return-void
.end method

.method public unregisterForMmiInitiate2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3343
    return-void
.end method

.method public unregisterForMmiInitiateEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4004
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4005
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4006
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4008
    :cond_0
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1835
    return-void
.end method

.method public unregisterForNewRingingConnection2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3263
    return-void
.end method

.method public unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3870
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3871
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3872
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3874
    :cond_0
    return-void
.end method

.method public unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x4

    .line 879
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_3

    .line 880
    instance-of v2, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_1

    .line 881
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 882
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    move-object v2, p1

    .line 883
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 884
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 885
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 886
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 887
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 888
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 889
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 890
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 891
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 892
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 893
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 894
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 895
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 896
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 897
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v3, 0x77

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v2, p1

    .line 900
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 901
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 902
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 903
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 904
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 905
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 906
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 907
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 881
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 917
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 922
    :cond_2
    :goto_2
    return-void

    .line 920
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2176
    return-void
.end method

.method public unregisterForPostDialCharacter2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3607
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3608
    return-void
.end method

.method public unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4389
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4390
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4391
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4393
    :cond_0
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1794
    return-void
.end method

.method public unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3223
    return-void
.end method

.method public unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3803
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3804
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3805
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3807
    :cond_0
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1892
    return-void
.end method

.method public unregisterForResendIncallMute2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3320
    return-void
.end method

.method public unregisterForResendIncallMuteEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3967
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3968
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3969
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3971
    :cond_0
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1877
    return-void
.end method

.method public unregisterForRingbackTone2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3305
    return-void
.end method

.method public unregisterForRingbackToneEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3938
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3939
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3940
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3942
    :cond_0
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1970
    return-void
.end method

.method public unregisterForServiceStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3398
    return-void
.end method

.method public unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4098
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4099
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4100
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4102
    :cond_0
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2076
    return-void
.end method

.method public unregisterForSignalInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3504
    return-void
.end method

.method public unregisterForSignalInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4246
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4247
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4248
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4250
    :cond_0
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3139
    return-void
.end method

.method public unregisterForSpeechInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3626
    return-void
.end method

.method public unregisterForSpeechInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4417
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4418
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4419
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4421
    :cond_0
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2136
    return-void
.end method

.method public unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3564
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4333
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4334
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4335
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4337
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1992
    return-void
.end method

.method public unregisterForSuppServiceFailed2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3420
    return-void
.end method

.method public unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4129
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4130
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4131
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4133
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3171
    return-void
.end method

.method public unregisterForSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3698
    return-void
.end method

.method public unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4529
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4530
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4531
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4533
    :cond_0
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1809
    return-void
.end method

.method public unregisterForUnknownConnection2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3238
    return-void
.end method

.method public unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3832
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3833
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3834
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3836
    :cond_0
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3179
    return-void
.end method

.method public unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3716
    return-void
.end method

.method public unregisterForVtReplaceDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4557
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4558
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4559
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4561
    :cond_0
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3155
    return-void
.end method

.method public unregisterForVtRingInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3662
    return-void
.end method

.method public unregisterForVtRingInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4473
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4474
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4475
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4477
    :cond_0
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3147
    return-void
.end method

.method public unregisterForVtStatusInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3644
    return-void
.end method

.method public unregisterForVtStatusInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4445
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4446
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4447
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4449
    :cond_0
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 638
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 640
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 652
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 665
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public voiceAccept(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4672
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceAccept("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4679
    .local v0, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 4682
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End voiceAccept("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    return-void
.end method

.method public vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4625
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4629
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " vtDial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4635
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4637
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    instance-of v6, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_4

    .line 4638
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 4641
    .local v2, hasBgCall:Z
    :goto_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    if-eqz v2, :cond_3

    .line 4645
    const-string v4, "CallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4656
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_0
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 4659
    .local v3, result:Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End vtDial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    return-object v3

    .end local v3           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    move v2, v5

    .line 4638
    goto :goto_0

    .restart local v2       #hasBgCall:Z
    :cond_2
    move v4, v5

    .line 4641
    goto :goto_1

    .line 4648
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 4652
    .end local v2           #hasBgCall:Z
    :cond_4
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_2
.end method
