.class public Lcom/android/gallery3d/app/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field private static final ACTION_APN:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI:Landroid/net/Uri; = null

.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x6

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final LOG:Z = true

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field private static final PREF_KEY_APN:Ljava/lang/String; = "apn_settings"

.field private static final PREF_KEY_ENABLE_HTTP_PROXY:Ljava/lang/String; = "enable_http_proxy"

.field private static final PREF_KEY_ENABLE_RTSP_PROXY:Ljava/lang/String; = "enable_rtsp_proxy"

.field private static final PREF_KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "http_buffer_size"

.field private static final PREF_KEY_HTTP_PROXY:Ljava/lang/String; = "http_proxy_settings"

.field private static final PREF_KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "rtsp_buffer_size"

.field private static final PREF_KEY_RTSP_PROXY:Ljava/lang/String; = "rtsp_proxy_settings"

.field private static final PREF_KEY_UDP_PORT:Ljava/lang/String; = "udp_port_settings"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final RESTORE_CARRIERS_URI_GEMINI:Ljava/lang/String; = "content://telephony/carriers_sim2/restore"

.field private static final SETTING_KEY_HTTP_PROXY_ENABLED:Ljava/lang/String; = "mtk_http_proxy_enabled"

.field private static final SETTING_KEY_HTTP_PROXY_HOST:Ljava/lang/String; = "mtk_http_proxy_host"

.field private static final SETTING_KEY_HTTP_PROXY_PORT:Ljava/lang/String; = "mtk_http_proxy_port"

.field private static final SETTING_KEY_MAX_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field private static final SETTING_KEY_MIN_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field private static final SETTING_KEY_RTSP_PROXY_ENABLED:Ljava/lang/String; = "mtk_rtsp_proxy_enabled"

.field private static final SETTING_KEY_RTSP_PROXY_HOST:Ljava/lang/String; = "mtk_rtsp_proxy_host"

.field private static final SETTING_KEY_RTSP_PROXY_PORT:Ljava/lang/String; = "mtk_rtsp_proxy_port"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final UNKNOWN_PORT:I = -0x1


# instance fields
.field private mApnPref:Landroid/preference/Preference;

.field private mBufferSizeHttpPref:Landroid/preference/Preference;

.field private mBufferSizeRtspPref:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCr:Landroid/content/ContentResolver;

.field private mDefaultApnUri:Landroid/net/Uri;

.field private mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

.field private mHttpProxyPref:Landroid/preference/Preference;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

.field private mRestoreCarrierUri:Landroid/net/Uri;

.field private mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

.field private mRtspProxyPref:Landroid/preference/Preference;

.field private mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mUdpDialog:Landroid/app/AlertDialog;

.field private mUdpPortPref:Landroid/preference/Preference;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/SettingsActivity;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 280
    const-string v0, "content://telephony/carriers_sim2/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/SettingsActivity;->DEFAULTAPN_URI_GEMINI:Landroid/net/Uri;

    .line 282
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    .line 283
    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI_GEMINI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 418
    new-instance v0, Lcom/android/gallery3d/app/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SettingsActivity$3;-><init>(Lcom/android/gallery3d/app/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshUdpPort()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SettingsActivity;)Lcom/android/gallery3d/app/ProxyDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshRtspProxy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshHttpProxy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshApn()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeHttp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeRtsp()V

    return-void
.end method

.method private getApnName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getQueryWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 330
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 332
    .local v9, name:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    if-eqz v6, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getSelectedApnKey()I

    move-result v8

    .line 339
    .local v8, key:I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    .line 340
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_0

    .line 342
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 351
    .end local v8           #key:I
    :cond_1
    if-eqz v6, :cond_2

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_2
    :goto_0
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnName() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v9

    .line 348
    :catch_0
    move-exception v7

    .line 349
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    if-eqz v6, :cond_2

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 351
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getQueryWhere()Ljava/lang/String;
    .locals 5

    .prologue
    .line 291
    const-string v1, ""

    .line 292
    .local v1, where:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 295
    .local v0, slotid:I
    packed-switch v0, :pswitch_data_0

    .line 312
    const-string v2, "SettingsActivity"

    const-string v3, "Can\'t get any valid SIM information"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0           #slotid:I
    :goto_0
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() mRestoreCarrierUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-object v1

    .line 297
    .restart local v0       #slotid:I
    :pswitch_0
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    .line 298
    sget-object v2, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 299
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    goto :goto_0

    .line 302
    :pswitch_1
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    .line 303
    sget-object v2, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI_GEMINI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 304
    const-string v2, "gsm.sim.operator.numeric.2"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    goto :goto_0

    .line 307
    :pswitch_2
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    .line 308
    sget-object v2, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 309
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    goto :goto_0

    .line 317
    .end local v0           #slotid:I
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUri:Landroid/net/Uri;

    .line 318
    sget-object v2, Lcom/android/gallery3d/app/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 319
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectedApnKey()I
    .locals 9

    .prologue
    .line 361
    const/4 v8, -0x1

    .line 362
    .local v8, key:I
    const/4 v6, 0x0

    .line 364
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 376
    :cond_0
    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    :goto_0
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey() key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v8

    .line 373
    :catch_0
    move-exception v7

    .line 374
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 376
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isGemini()Z
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x1

    .line 413
    .local v0, gemini:Z
    const-string v1, "SettingsActivity"

    const-string v2, "isGemini=true"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x1

    return v1
.end method

.method private refreshApn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshSIMInfo()V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    const v1, 0x7f0d0305

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    const v1, 0x7f0d0304

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getApnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshBufferSizeHttp()V
    .locals 6

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v2, "MTK-HTTP-CACHE-SIZE"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 428
    .local v0, bufferSize:I
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    const v2, 0x7f0d031d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/app/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBufferSizeHttp() bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private refreshBufferSizeRtsp()V
    .locals 6

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v2, "MTK-RTSP-CACHE-SIZE"

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, bufferSize:I
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    const v2, 0x7f0d0320

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/app/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBufferSizeRtsp() bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method private refreshHttpProxy()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 165
    iget-object v4, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v5, "mtk_http_proxy_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 166
    .local v0, enableProxy:Z
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_host"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 168
    .local v2, port:I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v6, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshHttpProxy() enableProxy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .end local v0           #enableProxy:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_0
    move v0, v3

    .line 165
    goto :goto_0

    .line 171
    .restart local v0       #enableProxy:Z
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #port:I
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    const v4, 0x7f0d0301

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private refreshRtspProxy()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 151
    iget-object v4, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v5, "mtk_rtsp_proxy_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 152
    .local v0, enableProxy:Z
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_host"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, port:I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v6, :cond_1

    .line 155
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshRtspProxy() enableProxy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .end local v0           #enableProxy:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_0
    move v0, v3

    .line 151
    goto :goto_0

    .line 157
    .restart local v0       #enableProxy:Z
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #port:I
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    const v4, 0x7f0d02fd

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private refreshSIMInfo()V
    .locals 7

    .prologue
    .line 386
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 387
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 392
    .local v1, simid:J
    invoke-static {p0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 402
    .end local v1           #simid:J
    :cond_0
    :goto_0
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSIMInfo() mSimInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v3, :cond_1

    .line 405
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSIMInfo() simid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", displayName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    return-void

    .line 395
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 397
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 398
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iput-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    goto :goto_0
.end method

.method private refreshUdpPort()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_min_udp_port"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, minport:I
    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_max_udp_port"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, maxport:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    if-lt v0, v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUdpPort() maxport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    const v3, 0x7f0d0307

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private showApnDialog()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.APN_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/gallery3d/app/SettingsActivity;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshApn()V

    goto :goto_0
.end method

.method private showBufferSizeDialog(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 450
    new-instance v0, Lcom/android/gallery3d/app/LimitDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/LimitDialog;-><init>(Landroid/content/Context;I)V

    .line 451
    .local v0, limitDialog:Lcom/android/gallery3d/app/LimitDialog;
    invoke-virtual {v0}, Lcom/android/gallery3d/app/LimitDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 452
    new-instance v1, Lcom/android/gallery3d/app/SettingsActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/SettingsActivity$4;-><init>(Lcom/android/gallery3d/app/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/LimitDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    invoke-virtual {v0}, Lcom/android/gallery3d/app/LimitDialog;->show()V

    .line 464
    return-void
.end method

.method private showBufferSizeHttpDialog()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/SettingsActivity;->showBufferSizeDialog(I)V

    .line 443
    return-void
.end method

.method private showBufferSizeRtspDialog()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/SettingsActivity;->showBufferSizeDialog(I)V

    .line 447
    return-void
.end method

.method private showProxyDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ProxyDialog;->dismiss()V

    .line 252
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/ProxyDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/ProxyDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ProxyDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    new-instance v1, Lcom/android/gallery3d/app/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SettingsActivity$2;-><init>(Lcom/android/gallery3d/app/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/ProxyDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ProxyDialog;->show()V

    .line 266
    return-void
.end method

.method private showUdpPortDialog()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 224
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/PortDialog;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PortDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/gallery3d/app/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SettingsActivity$1;-><init>(Lcom/android/gallery3d/app/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v1, "SettingsActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "logo-bitmap"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 96
    .local v0, logo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->addPreferencesFromResource(I)V

    .line 101
    const-string v1, "apn_settings"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    .line 102
    const-string v1, "enable_rtsp_proxy"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    .line 103
    const-string v1, "rtsp_proxy_settings"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    .line 104
    const-string v1, "enable_http_proxy"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "http_proxy_settings"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    .line 106
    const-string v1, "udp_port_settings"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    .line 107
    const-string v1, "http_buffer_size"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    .line 108
    const-string v1, "rtsp_buffer_size"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    .line 110
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCM:Landroid/net/ConnectivityManager;

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->showApnDialog()V

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 199
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/SettingsActivity;->showProxyDialog(I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 201
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->showProxyDialog(I)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 203
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->showUdpPortDialog()V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 206
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_enabled"

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshRtspProxy()V

    goto :goto_0

    .line 208
    .end local v0           #enable:Z
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 209
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 210
    .restart local v0       #enable:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_enabled"

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshHttpProxy()V

    goto :goto_0

    .line 212
    .end local v0           #enable:Z
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    .line 213
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->showBufferSizeHttpDialog()V

    goto :goto_0

    .line 214
    :cond_9
    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->showBufferSizeRtspDialog()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshApn()V

    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshRtspProxy()V

    .line 125
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshHttpProxy()V

    .line 126
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshUdpPort()V

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeHttp()V

    .line 128
    invoke-direct {p0}, Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeRtsp()V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method
