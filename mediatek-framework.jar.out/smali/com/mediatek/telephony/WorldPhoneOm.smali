.class public Lcom/mediatek/telephony/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# static fields
.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

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

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

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

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 100
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    const-string v1, "454"

    aput-object v1, v0, v4

    const-string v1, "455"

    aput-object v1, v0, v5

    const-string v1, "001"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

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

    .line 144
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 145
    const-string v0, "Single Card Project"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v2

    .line 147
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    .end local p3
    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v0, v2

    .line 148
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    new-instance v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 153
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "op"
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v1, "Gemini Project"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 134
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 135
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p3, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v1, v2, v0

    .line 136
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 378
    new-instance v1, Lcom/mediatek/telephony/WorldPhoneOm$1;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/WorldPhoneOm$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 107
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    .line 108
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    .line 109
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 110
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 111
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccRecords;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 112
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    .line 113
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    .line 114
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Z

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    .line 115
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 117
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "3G Switch Supported"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$1100()[Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    return p0
.end method

.method static synthetic access$1600(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOm;->mPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegState:I

    return p0
.end method

.method static synthetic access$200()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mState:I

    return p0
.end method

.method static synthetic access$2100(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    return p0
.end method

.method static synthetic access$600(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()[Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    return v0
.end method

.method private get3gCapabilitySim()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 548
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 549
    .local v0, capability:I
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 550
    .local v1, capability2:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 551
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 555
    :goto_0
    return v2

    .line 554
    :cond_1
    const-string v2, "3G turn off"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 555
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 7
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v5, 0x0

    .line 634
    if-nez p1, :cond_0

    .line 635
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 646
    :goto_0
    return v5

    .line 638
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, currentMcc:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 640
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 641
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 642
    const/4 v5, 0x1

    goto :goto_0

    .line 639
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 646
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 616
    if-eqz p1, :cond_2

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 617
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 619
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 620
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 622
    const/4 v4, 0x1

    .line 629
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 619
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 626
    const/4 v4, 0x2

    goto :goto_1

    .line 628
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_2
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 468
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 470
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    const-string v0, "Should not happen! 3G capability in absent SIM"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 478
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v2, :cond_5

    .line 479
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 485
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 486
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 488
    :cond_4
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    aput-boolean v3, v0, v1

    .line 490
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v2, :cond_7

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v0, v2, :cond_7

    .line 491
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 480
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 481
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    goto :goto_1

    .line 483
    :cond_6
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 493
    :cond_7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleNoService()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 210
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 212
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 213
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v0, v2, :cond_1

    .line 214
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 216
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 232
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 233
    return-void

    .line 219
    :cond_0
    const-string v0, "FDD modem, expecting Type1 service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 224
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "FDD modem -> keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 341
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 344
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

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v1, p2, :cond_1

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 348
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 354
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 351
    :cond_2
    const-string v1, "AsyncResult is wrong"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 352
    const-string v1, "AsyncResult is wrong"

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->restartSelection(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 358
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 361
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 362
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 376
    :goto_0
    return-void

    .line 365
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 366
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 373
    :cond_2
    const-string v0, "AsyncResult is wrong"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 374
    const-string v0, "AsyncResult is wrong"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->restartSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQueryModemType(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v0, v1, v3

    .line 331
    .local v0, modemType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modemType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 332
    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 333
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 337
    .end local v0           #modemType:I
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v1, "Query modem type fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 2
    .parameter "slotId"

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 321
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query modem type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryModemType(Landroid/os/Message;)V

    .line 326
    :cond_0
    return-void
.end method

.method private handleSwitchModem(I)V
    .locals 3
    .parameter "toModem"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 511
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 512
    if-ne p1, v2, :cond_0

    .line 513
    const-string v0, "Already in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 528
    :goto_0
    return-void

    .line 515
    :cond_0
    const-string v0, "Already in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_1
    if-ne p1, v1, :cond_2

    .line 520
    const-string v0, "Switching to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 521
    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 526
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    goto :goto_0

    .line 523
    :cond_2
    const-string v0, "Switching to TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 524
    invoke-static {v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_1
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 6
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowCampOn]+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 157
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

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 160
    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v2, v0, :cond_3

    .line 161
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 162
    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v2, v0, :cond_1

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 164
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 165
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 166
    const-string v1, "In TDD modem -> stay in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 167
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 206
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 171
    const-string v0, "In FDD modem -> switch to TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 172
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    if-ne v2, v4, :cond_6

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 177
    sput v4, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 178
    const-string v0, "In TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 179
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 183
    const-string v1, "In FDD modem -> stay in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 184
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    if-ne v2, v4, :cond_5

    .line 189
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 191
    sput v4, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 192
    const-string v0, "In TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 193
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_4
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 197
    const-string v1, "In FDD modem -> stay in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 198
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    const-string v2, "Unknown user type"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 204
    :cond_6
    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 205
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 660
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 584
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 585
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 586
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 588
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    monitor-exit v2

    .line 591
    return-void

    .line 590
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
    .line 594
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 595
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 597
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    .line 601
    const/16 v1, -0x63

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 605
    monitor-exit v2

    .line 606
    return-void

    .line 605
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
    .line 610
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 613
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 531
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

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 536
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 537
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 538
    :cond_2
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    if-ne v0, v2, :cond_3

    .line 539
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 540
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 541
    const-string v0, "DENY_CAMP_ON_REASON_UNKNOWN while resuming"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->restartSelection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 237
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 243
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 244
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->mRegion:I

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

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 247
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 248
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 252
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 650
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 652
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 653
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 654
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 258
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 315
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 260
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_RADIO_AVAILABLE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 267
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 271
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 275
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 279
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 283
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 287
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_QUERY_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleQueryModemType(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 291
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 292
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 293
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    const-string v1, "Set RAT=2g fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :sswitch_9
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 300
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 301
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    const-string v1, "Set RAT=auto fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :sswitch_a
    const-string v1, "handleMessage : <EVENT_STORE_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 308
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 309
    const-string v1, "Store modem type success"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    const-string v1, "Store modem type fail"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0x14 -> :sswitch_0
        0x1e -> :sswitch_3
        0x1f -> :sswitch_6
        0x28 -> :sswitch_8
        0x32 -> :sswitch_9
        0x3c -> :sswitch_a
        0x46 -> :sswitch_7
    .end sparse-switch
.end method

.method public resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 572
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 573
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mGsmPlmnStrings:[Ljava/lang/String;

    .line 574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 575
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->mFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->mWaitForDesignateService:Z

    .line 578
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->mDenyReason:I

    .line 579
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetSimProperties()V

    .line 580
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    .line 581
    return-void
.end method

.method public setNetworkSelectionMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    .line 503
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 506
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->m3gSimSlot:I

    goto :goto_0
.end method

.method public setRatMode(II)V
    .locals 3
    .parameter "ratMode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 560
    if-ne p1, v2, :cond_0

    .line 561
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 569
    :goto_0
    return-void

    .line 565
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->mCM:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method
