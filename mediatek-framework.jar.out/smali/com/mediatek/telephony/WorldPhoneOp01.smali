.class public Lcom/mediatek/telephony/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# static fields
.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

.field private static final MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static m3gSimSlot:I

.field private static mCM:[Lcom/android/internal/telephony/CommandsInterface;

.field private static mContext:Landroid/content/Context;

.field private static mDenyReason:I

.field private static mFirstSelect:[Z

.field private static mGsmPlmnStrings:[Ljava/lang/String;

.field private static mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

.field private static mImsi:[Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

.field private static mOperatorSpec:Ljava/lang/String;

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mPlmnSs:Ljava/lang/String;

.field private static mRegState:I

.field private static mRegion:I

.field private static mRilRadioTechnology:I

.field private static mState:I

.field private static mSuspendId:I

.field private static mSuspendWaitImsi:[Z

.field private static mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static mUserType:I

.field private static mWaitForDesignateService:Z


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    const-string v1, "45412"

    aput-object v1, v0, v6

    const-string v1, "45413"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00102"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v5

    const-string v1, "46003"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 103
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    const-string v1, "454"

    aput-object v1, v0, v4

    const-string v1, "455"

    aput-object v1, v0, v5

    const-string v1, "001"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;-><init>(Landroid/content/Context;)V

    .line 149
    const-string v0, "Single Card Project"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v2

    .line 151
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v0, v2

    .line 152
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 157
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v1, "Gemini Project"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 138
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 139
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p3, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 140
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 387
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOp01$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 110
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    .line 111
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 113
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 114
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccRecords;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 115
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    .line 116
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    .line 117
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    .line 118
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mOperatorSpec:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "3G Switch Supported"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    return p0
.end method

.method static synthetic access$1500(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegState:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegState:I

    return p0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mState:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mState:I

    return p0
.end method

.method static synthetic access$200()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleNoService()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    return p0
.end method

.method static synthetic access$600(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()[Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$900(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    return-void
.end method

.method private get3gCapabilitySim()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 555
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 556
    .local v0, capability:I
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 557
    .local v1, capability2:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 558
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 562
    :goto_0
    return v2

    .line 561
    :cond_1
    const-string v2, "3G turn off"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 562
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 7
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v5, 0x0

    .line 648
    if-nez p1, :cond_0

    .line 649
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 660
    :goto_0
    return v5

    .line 652
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, currentMcc:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 654
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 655
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 656
    const/4 v5, 0x1

    goto :goto_0

    .line 653
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 659
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 660
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 624
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 625
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 627
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 628
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 630
    const/4 v4, 0x1

    .line 643
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 627
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 634
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 635
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 636
    const/4 v4, 0x3

    goto :goto_1

    .line 633
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 639
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x2

    goto :goto_1

    .line 642
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 475
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 477
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 480
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    const-string v0, "Should not happen! 3G capability in absent SIM"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    .line 485
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v3, :cond_6

    .line 486
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 492
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 493
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 495
    :cond_4
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eqz v0, :cond_0

    .line 496
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 497
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v5, :cond_5

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v0, v4, :cond_8

    .line 498
    :cond_5
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 487
    :cond_6
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v4, :cond_7

    .line 488
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    goto :goto_1

    .line 490
    :cond_7
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_8
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleNoService()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 222
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 224
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 225
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v3, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 226
    :cond_0
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 227
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 229
    const-string v0, "TDD modem, expecting CMCC service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 247
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 248
    return-void

    .line 232
    :cond_1
    const-string v0, "FDD modem, expecting CMCC service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 233
    const-string v0, "Keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v0, v2, :cond_4

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 237
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 239
    const-string v0, "Should not happen! Type3 user, TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 242
    :cond_3
    const-string v0, "FDD modem -> keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGsmPlmnStrings["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v1, p2, :cond_1

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 357
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 363
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 360
    :cond_2
    const-string v1, "AsyncResult is wrong"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 361
    const-string v1, "AsyncResult is wrong"

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->restartSelection(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 367
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 370
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 371
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    .line 385
    :goto_0
    return-void

    .line 374
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 375
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "AsyncResult is wrong"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 383
    const-string v0, "AsyncResult is wrong"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->restartSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 330
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 334
    :cond_0
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    if-ne v0, p1, :cond_2

    .line 335
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 336
    :cond_1
    const-string v0, "Modem on, Type12 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, v2, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 346
    :cond_2
    :goto_0
    return-void

    .line 338
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 339
    const-string v0, "Modem on, Type3 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0

    .line 342
    :cond_4
    const-string v0, "Modem on, Unknown user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v2, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 3
    .parameter "toModem"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 518
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 519
    if-ne p1, v2, :cond_0

    .line 520
    const-string v0, "Already in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 522
    :cond_0
    const-string v0, "Already in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_1
    if-ne p1, v1, :cond_2

    .line 527
    const-string v0, "Switching to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 528
    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 533
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    goto :goto_0

    .line 530
    :cond_2
    const-string v0, "Switching to TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 531
    invoke-static {v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_1
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 6
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowCampOn]+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 3G SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 164
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-eq v2, v0, :cond_0

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    if-ne v2, v5, :cond_5

    .line 165
    :cond_0
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 166
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v2, v0, :cond_2

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 168
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 169
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 170
    const-string v1, "TDD modem, stop searching CMCC service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 171
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 218
    :goto_0
    return v0

    .line 175
    :cond_1
    sput v4, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 176
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 177
    const-string v1, "FDD modem, RAT=2g, expecting CMCC service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 178
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    if-ne v2, v5, :cond_4

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 183
    sput v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 184
    const-string v0, "TDD modem, expecting CMCC service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 185
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_3
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 190
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 191
    const-string v1, "FDD modem, expecting CMCC service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 192
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_4
    const-string v2, "Unknow region"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 215
    :goto_1
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 216
    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 217
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 218
    goto :goto_0

    .line 198
    :cond_5
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 199
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 202
    const-string v1, "Should not happen! TDD modem, Type3 user allow GSM full service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 203
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_6
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 208
    const-string v1, "FDD modem, GSM full service or WCDMA limited service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 209
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_7
    const-string v2, "Unknown user type"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 674
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOP01]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 591
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 592
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 593
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    .line 594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 595
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    monitor-exit v2

    .line 598
    return-void

    .line 597
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 601
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 602
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 604
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    .line 608
    const/16 v1, -0x63

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 612
    monitor-exit v2

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restartSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 617
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 620
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 621
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuspendId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 543
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 544
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 545
    :cond_2
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    if-ne v0, v2, :cond_3

    .line 546
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 547
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 548
    const-string v0, "DENY_CAMP_ON_REASON_UNKNOWN while resuming"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->restartSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 252
    const-string v4, "[searchForDesignateService]+ Search for CMCC srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 253
    if-nez p1, :cond_0

    .line 254
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 259
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->mRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 262
    const-string v4, "Find CMCC service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 267
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 664
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 666
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 667
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 668
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 275
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_RADIO_AVAILABLE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 282
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 286
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 290
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 294
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 298
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 302
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 303
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 304
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    const-string v1, "Set RAT=2g fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 314
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 315
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    const-string v1, "Set RAT=auto fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0x14 -> :sswitch_0
        0x1e -> :sswitch_3
        0x1f -> :sswitch_6
        0x28 -> :sswitch_7
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 579
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 582
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->mWaitForDesignateService:Z

    .line 585
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->mDenyReason:I

    .line 586
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetSimProperties()V

    .line 587
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    .line 588
    return-void
.end method

.method public setNetworkSelectionMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    .line 510
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    .line 515
    :goto_0
    return-void

    .line 512
    :cond_0
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 513
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->m3gSimSlot:I

    goto :goto_0
.end method

.method public setRatMode(II)V
    .locals 3
    .parameter "ratMode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 567
    if-ne p1, v2, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 576
    :goto_0
    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method
