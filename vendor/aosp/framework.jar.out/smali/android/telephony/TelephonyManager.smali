.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field private static final MAX_PDP_NUM:I = 0x3

.field private static final MAX_SIM1_PDP_NUM:I = 0x3

.field private static final MAX_SIM2_PDP_NUM:I = 0x1

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final RADIO_MISC:I = 0x2

.field public static final RADIO_WCDMA:I = 0x1

.field public static final SAR_BAND_GSM_DCS1800:I = 0x2

.field public static final SAR_BAND_GSM_EGSM900:I = 0x1

.field public static final SAR_BAND_GSM_GSM850:I = 0x0

.field public static final SAR_BAND_GSM_PCS1900:I = 0x3

.field public static final SAR_BAND_UMTS_WCDMA_1700:I = 0xd

.field public static final SAR_BAND_UMTS_WCDMA_1800:I = 0xc

.field public static final SAR_BAND_UMTS_WCDMA_800:I = 0x9

.field public static final SAR_BAND_UMTS_WCDMA_AWS_1700:I = 0x7

.field public static final SAR_BAND_UMTS_WCDMA_CLR_850:I = 0x8

.field public static final SAR_BAND_UMTS_WCDMA_DCS_1800:I = 0x6

.field public static final SAR_BAND_UMTS_WCDMA_GSM_900:I = 0xb

.field public static final SAR_BAND_UMTS_WCDMA_IMT_2000:I = 0x4

.field public static final SAR_BAND_UMTS_WCDMA_IMT_E_2600:I = 0xa

.field public static final SAR_BAND_UMTS_WCDMA_PCS_1900:I = 0x5

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static defaultSimId:I = 0x0

.field private static mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry; = null

.field private static mRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry; = null

.field private static mRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry; = null

.field private static final mtkGeminiSupport:Z = true

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    sput v0, Landroid/telephony/TelephonyManager;->defaultSimId:I

    .line 195
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 327
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 333
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 339
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 629
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 632
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 636
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iphonesubinfo2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iphonesubinfo3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iphonesubinfo4"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iphonesubinfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "iphonesubinfo2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "iphonesubinfo3"

    aput-object v3, v1, v2

    const-string v2, "iphonesubinfo4"

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 161
    sget-object v1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 164
    sput-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 169
    :goto_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 173
    const-string/jumbo v1, "telephony.registry2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 177
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v4, :cond_0

    .line 178
    const-string/jumbo v1, "telephony.registry3"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->mRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 181
    :cond_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v5, :cond_1

    .line 182
    const-string/jumbo v1, "telephony.registry4"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->mRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 187
    .end local v0           #appContext:Landroid/content/Context;
    :cond_1
    return-void

    .line 166
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_2
    sput-object p1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 228
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2591
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2592
    const-string v2, "TelephonyManager"

    const-string v3, "getDefaultSim is sim1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :goto_0
    return v1

    .line 2595
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2596
    const-string v3, "TelephonyManager"

    const-string v4, "getDefaultSim is sim2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2597
    goto :goto_0

    .line 2599
    :cond_1
    const-string v2, "TelephonyManager"

    const-string v3, "getDefaultSim is no sim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2603
    :catch_0
    move-exception v0

    .line 2604
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2605
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2606
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1465
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 652
    const-string v2, ""

    .line 654
    .local v2, productType:Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 656
    .local v0, curVal:I
    move v3, v0

    .line 657
    .local v3, retVal:I
    if-ne v3, v5, :cond_0

    .line 658
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 659
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 660
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 661
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    const/4 v3, 0x1

    .line 671
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " product_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v3

    .line 664
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 667
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMaxPdpNum(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 251
    const/4 v0, 0x3

    return v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 833
    packed-switch p0, :pswitch_data_0

    .line 853
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 839
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 849
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 851
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 876
    packed-switch p0, :pswitch_data_0

    .line 908
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 878
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 880
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 882
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 884
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 886
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 888
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 890
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 892
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 894
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 896
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 898
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 900
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 902
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 904
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 906
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 571
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 596
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 581
    goto :goto_0

    .line 590
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 593
    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 554
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 556
    const/4 v1, 0x0

    .line 557
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 543
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, type:I
    return v0
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 605
    const-string v1, ""

    .line 606
    .local v1, cmdline:Ljava/lang/String;
    const/4 v5, 0x0

    .line 608
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 610
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 611
    .local v3, count:I
    if-lez v3, :cond_0

    .line 612
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v1           #cmdline:Ljava/lang/String;
    .local v2, cmdline:Ljava/lang/String;
    move-object v1, v2

    .line 617
    .end local v2           #cmdline:Ljava/lang/String;
    .restart local v1       #cmdline:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_3

    .line 619
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 624
    .end local v0           #buffer:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-object v1

    .line 620
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 621
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 614
    .end local v0           #buffer:[B
    .end local v3           #count:I
    :catch_1
    move-exception v4

    .line 615
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    if-eqz v5, :cond_1

    .line 619
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 620
    :catch_2
    move-exception v7

    goto :goto_0

    .line 617
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_2

    .line 619
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 621
    :cond_2
    :goto_3
    throw v7

    .line 620
    :catch_3
    move-exception v8

    goto :goto_3

    .line 617
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 614
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/FileInputStream;
    :cond_3
    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getRadioType(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1357
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2305
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberInfo simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustModemRadioPower(II)Z
    .locals 5
    .parameter "level_2G"
    .parameter "level_3G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2791
    const/4 v0, 0x0

    .line 2794
    .local v0, result:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2795
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2796
    const-string v2, "TelephonyManager"

    const-string v3, "[TelephonyManager] Call PhoneInterfaceManager - adjustModemRadioPower "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPower(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2803
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TelephonyManager]adjustModemRadioPower, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    return v0

    .line 2799
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public adjustModemRadioPowerByBand(II)Z
    .locals 8
    .parameter "band"
    .parameter "level"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2818
    const/4 v2, 0x0

    .line 2819
    .local v2, result:Z
    const/4 v1, 0x1

    .line 2820
    .local v1, rat:I
    const/4 v6, 0x3

    if-le p1, v6, :cond_2

    move v0, v4

    .line 2821
    .local v0, is3G:Z
    :goto_0
    if-ltz p1, :cond_3

    const/16 v6, 0xd

    if-gt p1, v6, :cond_3

    if-ltz p2, :cond_3

    const/16 v6, 0xff

    if-gt p2, v6, :cond_3

    .line 2826
    .local v4, validValue:Z
    :goto_1
    if-eqz v4, :cond_4

    .line 2828
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2829
    .local v3, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    .line 2830
    if-eqz v0, :cond_0

    .line 2832
    add-int/lit8 p1, p1, -0x4

    .line 2833
    const/4 v1, 0x2

    .line 2835
    :cond_0
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TelephonyManager]adjustModemRadioPowerByBand, band = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-interface {v3, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPowerByBand(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2846
    .end local v3           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_2
    return v2

    .end local v0           #is3G:Z
    .end local v4           #validValue:Z
    :cond_2
    move v0, v5

    .line 2820
    goto :goto_0

    .restart local v0       #is3G:Z
    :cond_3
    move v4, v5

    .line 2821
    goto :goto_1

    .line 2843
    .restart local v4       #validValue:Z
    :cond_4
    const-string v5, "TelephonyManager"

    const-string v6, "[TelephonyManager]Invalid band or level value !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2838
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "cmdAPDU"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2679
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2680
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2681
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2689
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2683
    :catch_0
    move-exception v0

    .line 2685
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2689
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2686
    :catch_1
    move-exception v0

    .line 2687
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "simId"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2633
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2634
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2635
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2643
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2637
    :catch_0
    move-exception v0

    .line 2639
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2643
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2640
    :catch_1
    move-exception v0

    .line 2641
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapDisconnectSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2656
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2657
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapDisconnectSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2665
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2659
    :catch_0
    move-exception v0

    .line 2661
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2665
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2662
    :catch_1
    move-exception v0

    .line 2663
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOffSIM()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2746
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2747
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2748
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOffSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2756
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2750
    :catch_0
    move-exception v0

    .line 2752
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2756
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2753
    :catch_1
    move-exception v0

    .line 2754
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2725
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2726
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2727
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2735
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2729
    :catch_0
    move-exception v0

    .line 2731
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2735
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2732
    :catch_1
    move-exception v0

    .line 2733
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 3
    .parameter "type"
    .parameter "btRsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2702
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2703
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2704
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2712
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 2706
    :catch_0
    move-exception v0

    .line 2708
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2712
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2709
    :catch_1
    move-exception v0

    .line 2710
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public closeRrc()V
    .locals 1

    .prologue
    .line 1294
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IPhoneSubInfo;->closeRrc()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_0
    return-void

    .line 1296
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1295
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 459
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0

    .line 460
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1761
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1762
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 442
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    goto :goto_0

    .line 443
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1741
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :goto_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1742
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
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
    const/4 v1, 0x0

    .line 1664
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1668
    :goto_0
    return-object v1

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1667
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1668
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1377
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1385
    :goto_0
    return v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1380
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1382
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1384
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 2382
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2390
    :goto_0
    return v1

    .line 2383
    :catch_0
    move-exception v0

    .line 2385
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2387
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2389
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1572
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1577
    :goto_0
    return v1

    .line 1573
    :catch_0
    move-exception v0

    .line 1575
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1576
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1577
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1590
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1595
    :goto_0
    return v1

    .line 1591
    :catch_0
    move-exception v0

    .line 1593
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1594
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1595
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1606
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1611
    :goto_0
    return-object v1

    .line 1607
    :catch_0
    move-exception v0

    .line 1609
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1610
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1611
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1710
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1713
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1714
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 1723
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 1718
    :catch_0
    move-exception v2

    .line 1719
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v3

    .line 1720
    goto :goto_0

    .line 1721
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1722
    .local v2, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v3

    .line 1723
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1228
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1235
    :goto_0
    return-object v1

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1232
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1234
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 507
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 508
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 509
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 521
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 512
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 514
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 517
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 518
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 521
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1415
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1423
    :goto_0
    return v1

    .line 1416
    :catch_0
    move-exception v0

    .line 1418
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1420
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1422
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1453
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1460
    :goto_0
    return v1

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1458
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1459
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 2406
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2413
    :goto_0
    return v1

    .line 2407
    :catch_0
    move-exception v0

    .line 2409
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2411
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2412
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 2567
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 389
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1686
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1692
    :goto_0
    return-object v1

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1690
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1691
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 370
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 375
    :goto_0
    return-object v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 374
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2316
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2317
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2318
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2328
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2323
    :catch_0
    move-exception v0

    .line 2324
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2326
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2327
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2425
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2426
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2427
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2438
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2436
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2437
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1327
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1334
    :goto_0
    return-object v1

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1331
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1333
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1309
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1316
    :goto_0
    return-object v1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1313
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1315
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1346
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1351
    :goto_0
    return-object v1

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1349
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1351
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2223
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2230
    :goto_0
    return-object v1

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2227
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2229
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2198
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2205
    :goto_0
    return-object v1

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2202
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2204
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1077
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1083
    :goto_0
    return v1

    .line 1078
    :catch_0
    move-exception v0

    .line 1080
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1081
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1083
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 5

    .prologue
    .line 2765
    const/4 v1, 0x0

    .line 2767
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2768
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2769
    const-string v3, "TelephonyManager"

    const-string v4, "[TelephonyManager] Call PhoneInterfaceManager - getMissedCallCount "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2777
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 2772
    :catch_0
    move-exception v0

    .line 2773
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 2
    .parameter "type"
    .parameter "message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2556
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2563
    :goto_0
    return-void

    .line 2557
    :catch_0
    move-exception v0

    .line 2559
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2560
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2561
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1182
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1189
    :goto_0
    return-object v1

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1186
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1188
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 480
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 3
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1781
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfoGemini(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1787
    :goto_0
    return-object v1

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1785
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1786
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1903
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1904
    const-string v0, "gsm.operator.iso-country.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    :goto_0
    return-object v0

    .line 1905
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1906
    const-string v0, "gsm.operator.iso-country.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1907
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1908
    const-string v0, "gsm.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1910
    :cond_2
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1858
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1859
    const-string v0, "gsm.operator.numeric.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1865
    :goto_0
    return-object v0

    .line 1860
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1861
    const-string v0, "gsm.operator.numeric.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1862
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1863
    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1865
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1836
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1837
    const-string v0, "gsm.operator.alpha.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    :goto_0
    return-object v0

    .line 1838
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1839
    const-string v0, "gsm.operator.alpha.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1840
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1841
    const-string v0, "gsm.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1843
    :cond_2
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1936
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1937
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1938
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1950
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1943
    :catch_0
    move-exception v0

    .line 1945
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1947
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1949
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1965
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1997
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1967
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 1969
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 1971
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 1973
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 1975
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 1977
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 1979
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 1981
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 1983
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 1985
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 1987
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 1989
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 1991
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 1993
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 1995
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 1965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 222
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1804
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1805
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1806
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeGemini(I)I

    move-result v2

    .line 1820
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1809
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1811
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1814
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1815
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 1816
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1819
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1820
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getSN()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2535
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2540
    :goto_0
    return-object v1

    .line 2536
    :catch_0
    move-exception v0

    .line 2538
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2539
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2540
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoGemini(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2122
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimCountryIso:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2132
    :goto_0
    return-object v1

    .line 2125
    :catch_0
    move-exception v0

    .line 2127
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2129
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2131
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2074
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperator(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2084
    :goto_0
    return-object v1

    .line 2077
    :catch_0
    move-exception v0

    .line 2079
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2081
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2083
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameGemini(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2100
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperatorName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2110
    :goto_0
    return-object v1

    .line 2103
    :catch_0
    move-exception v0

    .line 2105
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2107
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2109
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2150
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2157
    :goto_0
    return-object v1

    .line 2151
    :catch_0
    move-exception v0

    .line 2152
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2154
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2156
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getSimStateGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2038
    if-nez p1, :cond_0

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2042
    const/4 v1, 0x1

    .line 2057
    :goto_1
    return v1

    .line 2038
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    const-string v1, "gsm.sim.state.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2044
    .restart local v0       #prop:Ljava/lang/String;
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2045
    const/4 v1, 0x2

    goto :goto_1

    .line 2047
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2048
    const/4 v1, 0x3

    goto :goto_1

    .line 2050
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2051
    const/4 v1, 0x4

    goto :goto_1

    .line 2053
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2054
    const/4 v1, 0x5

    goto :goto_1

    .line 2057
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSmsDefaultSim()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2615
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSmsDefaultSim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2619
    :goto_0
    return v1

    .line 2616
    :catch_0
    move-exception v0

    .line 2617
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2618
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2619
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2857
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2858
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2859
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2869
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2863
    :catch_0
    move-exception v0

    .line 2865
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2867
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2868
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2878
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2879
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2880
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2890
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2884
    :catch_0
    move-exception v0

    .line 2886
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2888
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2889
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2174
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2181
    :goto_0
    return-object v1

    .line 2175
    :catch_0
    move-exception v0

    .line 2176
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2178
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2180
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2293
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2300
    :goto_0
    return-object v1

    .line 2294
    :catch_0
    move-exception v0

    .line 2295
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2297
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2299
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2246
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2253
    :goto_0
    return-object v1

    .line 2247
    :catch_0
    move-exception v0

    .line 2248
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2250
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2252
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1249
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCountGemini(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2269
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2276
    :goto_0
    return v1

    .line 2270
    :catch_0
    move-exception v0

    .line 2271
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2273
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2275
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 940
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCardGemini(I)Z
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2010
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2018
    :goto_0
    return v1

    .line 2011
    :catch_0
    move-exception v0

    .line 2013
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2015
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2017
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2979
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2980
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2981
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvno()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2990
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2985
    :catch_0
    move-exception v0

    .line 2986
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2988
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2989
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2999
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3000
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3001
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3010
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3008
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3009
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1880
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1881
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1887
    :goto_0
    return v0

    .line 1882
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1883
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1884
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1885
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1887
    :cond_2
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2939
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2940
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2941
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2951
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2945
    :catch_0
    move-exception v0

    .line 2947
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2949
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2950
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 2958
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2959
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2960
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2970
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2964
    :catch_0
    move-exception v0

    .line 2966
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2968
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2969
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2899
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2900
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2901
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2911
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2905
    :catch_0
    move-exception v0

    .line 2907
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2909
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2910
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2920
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2921
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2922
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2932
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2926
    :catch_0
    move-exception v0

    .line 2928
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2930
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2931
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1649
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1650
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1632
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1633
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1524
    sget-object v4, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1526
    .local v3, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1527
    .local v2, notifyNow:Ljava/lang/Boolean;
    sget-object v4, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 1531
    if-nez p2, :cond_3

    .line 1533
    sget-object v4, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1563
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :cond_0
    :goto_2
    return-void

    .line 1524
    .end local v3           #pkgForDebug:Ljava/lang/String;
    :cond_1
    const-string v3, "<unknown>"

    goto :goto_0

    .line 1526
    .restart local v3       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1534
    .restart local v2       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    const/16 v4, 0x20

    if-ne p2, v4, :cond_4

    .line 1535
    :try_start_1
    sget-object v4, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, p2, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1556
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 1558
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1537
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v2       #notifyNow:Ljava/lang/Boolean;
    :cond_4
    const/4 v0, 0x0

    .line 1538
    .local v0, data_events:I
    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_5

    .line 1539
    or-int/lit8 v0, v0, 0x40

    .line 1541
    :cond_5
    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_6

    .line 1542
    or-int/lit16 v0, v0, 0x80

    .line 1545
    :cond_6
    if-eqz v0, :cond_0

    .line 1550
    :try_start_2
    sget-object v4, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v5, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1559
    .end local v0           #data_events:I
    .end local v2           #notifyNow:Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 1561
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 7
    .parameter "listener"
    .parameter "events"
    .parameter "simId"

    .prologue
    const/4 v4, 0x1

    .line 2503
    sget-object v3, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, pkgForDebug:Ljava/lang/String;
    :goto_0
    const-string v3, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listenGemini,simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",events="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2508
    .local v1, notifyNow:Ljava/lang/Boolean;
    const/4 v3, 0x3

    if-ne v3, p3, :cond_2

    .line 2509
    sget-object v3, Landroid/telephony/TelephonyManager;->mRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2524
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 2503
    .end local v2           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    goto :goto_0

    .line 2507
    .restart local v2       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2510
    .restart local v1       #notifyNow:Ljava/lang/Boolean;
    :cond_2
    const/4 v3, 0x2

    if-ne v3, p3, :cond_3

    .line 2511
    :try_start_1
    sget-object v3, Landroid/telephony/TelephonyManager;->mRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2517
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 2518
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2512
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    if-ne v4, p3, :cond_4

    .line 2513
    :try_start_2
    sget-object v3, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2520
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 2521
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 2515
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #notifyNow:Ljava/lang/Boolean;
    :cond_4
    :try_start_3
    sget-object v3, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v4, p2, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public listenWithCheck(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1470
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    .line 1471
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1475
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_1

    .line 1476
    const-string/jumbo v0, "telephony.registry2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1480
    :cond_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    sget-object v0, Landroid/telephony/TelephonyManager;->mRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_2

    .line 1481
    const-string/jumbo v0, "telephony.registry3"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->mRegistry3:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1484
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    sget-object v0, Landroid/telephony/TelephonyManager;->mRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_3

    .line 1485
    const-string/jumbo v0, "telephony.registry4"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->mRegistry4:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1489
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1490
    return-void
.end method

.method public simAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2341
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2342
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2343
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->simAuth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2350
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2347
    :catch_0
    move-exception v0

    .line 2349
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2448
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2449
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2450
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2456
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2454
    :catch_0
    move-exception v0

    .line 2455
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "strAutn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2363
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2364
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2365
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2372
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2369
    :catch_0
    move-exception v0

    .line 2371
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "simId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2466
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2467
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2468
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2474
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-object v2

    .line 2472
    :catch_0
    move-exception v0

    .line 2473
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
