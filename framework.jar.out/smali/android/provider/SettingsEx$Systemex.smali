.class public final Landroid/provider/SettingsEx$Systemex;
.super Landroid/provider/Settings$NameValueTable;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Systemex"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MULTITASK_ONE_SCREEN_STATUS_OFF:I = 0x8

.field public static final MULTITASK_ONE_SCREEN_STATUS_ON:I = 0x7

.field public static final MULTITASK_ONE_SCREEN_STATUS_UNKNOW:I = 0x9

.field public static final MULTI_PDP_PLMN_MATCHED:Ljava/lang/String; = "multi_pdp_plmn_matched"

.field public static final SUSPEND_BUTTON_SETTINGS:Ljava/lang/String; = "suspend_button_settings"

.field public static final SYS_PROP_SETTINGEX_VERSION:Ljava/lang/String; = "sys.settings_systemex_version"

.field public static final USER_SET_AIRPLANE:Ljava/lang/String; = "user_set_airplane"

.field private static volatile mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    .line 518
    const-string v0, "content://settings/systemex"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 462
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 466
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 465
    .restart local p2
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 325
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 329
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 328
    .restart local p2
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 393
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 400
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 396
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static declared-synchronized getMultiTaskOneScreenStatus(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 263
    const-class v2, Landroid/provider/SettingsEx$Systemex;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 265
    .local v0, status:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 266
    const/16 v1, 0x9

    .line 271
    :goto_0
    monitor-exit v2

    return v1

    .line 268
    :cond_0
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/16 v1, 0x8

    goto :goto_0

    .line 271
    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    .line 263
    .end local v0           #status:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 236
    const-class v1, Landroid/provider/SettingsEx$Systemex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/provider/SettingsEx$NameValueCache;

    const-string/jumbo v2, "sys.settings_systemex_version"

    sget-object v3, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/provider/SettingsEx$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    .line 239
    :cond_0
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    invoke-virtual {v0, p0, p1}, Landroid/provider/SettingsEx$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 243
    const-class v1, Landroid/provider/SettingsEx$Systemex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/provider/SettingsEx$NameValueCache;

    const-string/jumbo v2, "sys.settings_systemex_version"

    sget-object v3, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/provider/SettingsEx$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    .line 246
    :cond_0
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->mNameValueCache:Landroid/provider/SettingsEx$NameValueCache;

    invoke-virtual {v0, p0, p1}, Landroid/provider/SettingsEx$NameValueCache;->getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 307
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/SettingsEx$Systemex;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 512
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 444
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 257
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized turnOffMultiTaskOneScreen(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 288
    const-class v2, Landroid/provider/SettingsEx$Systemex;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    .local v0, status:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 295
    :goto_0
    monitor-exit v2

    return v1

    .line 292
    :cond_0
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const/4 v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const-string v1, "0"

    invoke-static {p0, p1, v1}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 288
    .end local v0           #status:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized turnOnMultiTaskOneScreen(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 276
    const-class v2, Landroid/provider/SettingsEx$Systemex;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/SettingsEx$Systemex;->getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 277
    .local v0, status:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 283
    :goto_0
    monitor-exit v2

    return v1

    .line 280
    :cond_0
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "1"

    invoke-static {p0, p1, v1}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    .end local v0           #status:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
