.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimTelephonyManager"

.field private static cm:Landroid/net/ConnectivityManager;

.field private static isMultiSimEnabled:Z

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field private static tm:Landroid/telephony/TelephonyManager;

.field private static tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 229
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 244
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPreferredDataSubscription(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 474
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 475
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->cm:Landroid/net/ConnectivityManager;

    .line 478
    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 259
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 261
    aget-object v1, v2, p1

    .line 264
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 463
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 465
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCallState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 123
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 470
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 107
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 409
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 392
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 199
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 163
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 143
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 346
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 317
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 334
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 359
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 281
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 299
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 377
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 451
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 423
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 437
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMessageCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 275
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 181
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isOffhook(I)Z
    .locals 5
    .parameter "subscription"

    .prologue
    .line 515
    const/4 v2, 0x0

    .line 518
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 519
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 520
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOffhookGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 526
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MSimTelephonyManager"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 505
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listenWithCheck(Landroid/telephony/PhoneStateListener;I)V

    .line 506
    return-void
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "events"
    .parameter "simId"

    .prologue
    .line 509
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->tmEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listenWithCheck(Landroid/telephony/PhoneStateListener;II)V

    .line 510
    return-void
.end method
