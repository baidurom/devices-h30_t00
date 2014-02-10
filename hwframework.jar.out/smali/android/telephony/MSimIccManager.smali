.class public Landroid/telephony/MSimIccManager;
.super Ljava/lang/Object;
.source "MSimIccManager.java"


# static fields
.field private static final SIMPHONEBOOK_SERVICE_NAME:Ljava/lang/String; = "simphonebook"

.field private static final SIMPHONEBOOK_SERVICE_NAME_SIM2:Ljava/lang/String; = "simphonebook2"

.field private static final TAG:Ljava/lang/String; = "MSimIccManager"

.field private static mInstance:Landroid/telephony/MSimIccManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/telephony/MSimIccManager;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Landroid/telephony/MSimIccManager;->mInstance:Landroid/telephony/MSimIccManager;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/telephony/MSimIccManager;

    invoke-direct {v0}, Landroid/telephony/MSimIccManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimIccManager;->mInstance:Landroid/telephony/MSimIccManager;

    .line 103
    :cond_0
    sget-object v0, Landroid/telephony/MSimIccManager;->mInstance:Landroid/telephony/MSimIccManager;

    return-object v0
.end method


# virtual methods
.method public getAdnRecordsSize(I)[I
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 52
    .local v2, lIccPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez v2, :cond_2

    .line 59
    :goto_1
    return-object v3

    .line 48
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #lIccPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const-string v4, "simphonebook2"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #binder:Landroid/os/IBinder;
    goto :goto_0

    .line 56
    .restart local v2       #lIccPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    const/16 v4, 0x6f3a

    :try_start_0
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSimDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v2

    .line 72
    :cond_1
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 77
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 82
    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :cond_2
    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isPhoneBookReady(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    .line 107
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 110
    .local v1, iPhbEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 111
    const-string v3, "MSimIccManager"

    const-string v4, "checkPhoneBookState, phoneEx == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    .line 128
    :goto_0
    return v2

    .line 115
    :cond_0
    const/4 v2, 0x0

    .line 118
    .local v2, isPbReady:Z
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReadyExt(I)Z

    move-result v2

    .line 119
    const-string v3, "MSimIccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPbReady:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MSimIccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerSimDisplayNameChange(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://telephony/siminfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    return-void
.end method
