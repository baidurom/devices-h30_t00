.class public Lcom/mediatek/epo/MtkEpoClientManagerService;
.super Lcom/mediatek/common/epo/IMtkEpoClientManager$Stub;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_TYPE_FTP:I = 0x0

.field private static final DOWNLOAD_TYPE_HTTP:I = 0x1

.field private static final EPOHAL_FILE_PATH:Ljava/lang/String; = "/data/misc/EPOHAL.DAT"

.field private static final EPOMD5_FILE_PATH:Ljava/lang/String; = "/data/misc/EPO.MD5"

.field private static final EPOTMP_FILE_PATH:Ljava/lang/String; = "/data/misc/EPOTMP.DAT"

.field private static final EPO_FILE_PATH:Ljava/lang/String; = "/data/misc/EPO.DAT"

.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtkEpoClientManagerService"

.field private static final UPDATE_FAILURE:I = 0x1

.field private static final UPDATE_SUCCESS:I


# instance fields
.field private mAWSHash:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoChangeDownloadType:Z

.field private mAutoUpdate:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mDownloadHandler:Landroid/os/Handler;

.field private mDownloadThread:Ljava/lang/Thread;

.field private mDownloadType:I

.field private mEpoEnable:Z

.field private mEpoStatus:I

.field private mFileExpired:Z

.field private mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

.field mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mManualStop:Z

.field private mProfileAWSAddr:Ljava/lang/String;

.field private mProfileAddr:Ljava/lang/String;

.field private mProfileFTPAddr:Ljava/lang/String;

.field private mProfilePassword:Ljava/lang/String;

.field private mProfilePort:I

.field private mProfileUserName:Ljava/lang/String;

.field private mRetryTimes:I

.field private mTimeout:I

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTimerStatus:I

.field private mUpdatePeriod:J

.field private mUpdateResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/32 v7, 0x5265c00

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Lcom/mediatek/common/epo/IMtkEpoClientManager$Stub;-><init>()V

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    .line 91
    iput-boolean v6, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 92
    iput v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 93
    iput v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 94
    iput-boolean v6, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoChangeDownloadType:Z

    .line 95
    iput-boolean v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 96
    iput-wide v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 97
    iput-boolean v6, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    .line 98
    iput v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 99
    iput-boolean v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    .line 100
    const/4 v2, 0x5

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    .line 101
    const/16 v2, 0x2710

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    .line 102
    const/16 v2, 0x12c

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    .line 104
    const-string v2, "epo.mediatek.com"

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    .line 105
    const/16 v2, 0x15

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    .line 106
    const-string v2, "epo_alps"

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    .line 107
    const-string v2, "epo_alps"

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    .line 109
    const-string v2, "epodownload.mediatek.com"

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAWSAddr:Ljava/lang/String;

    .line 110
    const-string v2, "epo.mediatek.com"

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileFTPAddr:Ljava/lang/String;

    .line 112
    iput v6, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    .line 115
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    .line 179
    new-instance v2, Lcom/mediatek/epo/MtkEpoClientManagerService$1;

    invoke-direct {v2, p0}, Lcom/mediatek/epo/MtkEpoClientManagerService$1;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v2, Lcom/mediatek/epo/MtkEpoClientManagerService$2;

    invoke-direct {v2, p0}, Lcom/mediatek/epo/MtkEpoClientManagerService$2;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadThread:Ljava/lang/Thread;

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "******** MtkEpoClientManagerService constructor ********"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/mediatek/common/epo/MtkEpoXmlLoader;

    invoke-direct {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;-><init>()V

    .line 125
    .local v0, epoXmlLoader:Lcom/mediatek/common/epo/MtkEpoXmlLoader;
    const-string v2, "/etc/epo_conf.xml"

    invoke-virtual {v0, v2}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->updateEpoProfile(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->getUpdatePeriod()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 128
    iget-wide v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 129
    iput-wide v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 131
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setUpdatePeriod] interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 133
    const-string v2, "MTK_EPO_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v2, "GPS_EPO_DOWNLOAD_REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v2, Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    .line 139
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mGpsStatusObserver:Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 144
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "MTK_EPO_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 146
    invoke-direct {p0, v6}, Lcom/mediatek/epo/MtkEpoClientManagerService;->setDownloadType(I)V

    .line 147
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 149
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->deleteEpoFile()V

    .line 150
    return-void
.end method

.method private UrlDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
    .parameter "addr"
    .parameter "port"
    .parameter "account"
    .parameter "password"
    .parameter "fileName"
    .parameter "destination"
    .parameter "timeout"

    .prologue
    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, count:I
    const/4 v9, 0x0

    .line 255
    .local v9, total:I
    const/4 v7, 0x0

    .line 256
    .local v7, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 257
    .local v2, connection:Ljava/net/URLConnection;
    const/4 v5, 0x0

    .line 258
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 259
    .local v1, b:[B
    const/4 v8, 0x0

    .line 262
    .local v8, success:Z
    const/4 v10, 0x0

    .line 263
    .local v10, url:Ljava/net/URL;
    :try_start_0
    iget v12, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 264
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v10           #url:Ljava/net/URL;
    .local v11, url:Ljava/net/URL;
    move-object v10, v11

    .line 270
    .end local v11           #url:Ljava/net/URL;
    .restart local v10       #url:Ljava/net/URL;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dest="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " timeout="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 274
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 275
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 276
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->setPassiveMode(Z)V

    .line 277
    const-string v12, "before connect"

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 278
    const/16 v12, 0x16

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendEpoEventToAgps(I)V

    .line 279
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 280
    const-string v12, "after connect"

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 281
    const/16 v12, 0x17

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendEpoEventToAgps(I)V

    .line 283
    iget v12, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 284
    const-string v12, "ETag"

    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAWSHash:Ljava/lang/String;

    .line 285
    iget-object v12, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAWSHash:Ljava/lang/String;

    const-string v13, "^\"|\"$"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAWSHash:Ljava/lang/String;

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AWSHash ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAWSHash:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 291
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 293
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_4

    .line 294
    add-int/2addr v9, v3

    .line 295
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 302
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 303
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v4, e:Ljava/net/MalformedURLException;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    if-eqz v7, :cond_1

    .line 311
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_1
    if-eqz v5, :cond_2

    .line 313
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 318
    .end local v4           #e:Ljava/net/MalformedURLException;
    :cond_2
    :goto_3
    return v8

    .line 266
    :cond_3
    :try_start_4
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ftp://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "//"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v10           #url:Ljava/net/URL;
    .restart local v11       #url:Ljava/net/URL;
    move-object v10, v11

    .end local v11           #url:Ljava/net/URL;
    .restart local v10       #url:Ljava/net/URL;
    goto/16 :goto_0

    .line 298
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 299
    const/16 v12, 0x18

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendEpoEventToAgps(I)V

    .line 300
    const/16 v12, 0x19

    invoke-direct {p0, v12}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendEpoEventToAgps(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 301
    const/4 v8, 0x1

    .line 310
    if-eqz v7, :cond_5

    .line 311
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_5
    if-eqz v6, :cond_6

    .line 313
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    move-object v5, v6

    .line 316
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 314
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 317
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 314
    .local v4, e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 304
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 305
    .restart local v4       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 310
    if-eqz v7, :cond_7

    .line 311
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_7
    if-eqz v5, :cond_2

    .line 313
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 314
    :catch_4
    move-exception v4

    .line 315
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 306
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 307
    .local v4, e:Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 310
    if-eqz v7, :cond_8

    .line 311
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_8
    if-eqz v5, :cond_2

    .line 313
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    .line 314
    :catch_6
    move-exception v4

    .line 315
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 309
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 310
    :goto_6
    if-eqz v7, :cond_9

    .line 311
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 312
    :cond_9
    if-eqz v5, :cond_a

    .line 313
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 316
    :cond_a
    :goto_7
    throw v12

    .line 314
    :catch_7
    move-exception v4

    .line 315
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 309
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 306
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 304
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 302
    :catch_a
    move-exception v4

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/epo/MtkEpoClientManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/epo/MtkEpoClientManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/epo/MtkEpoClientManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/epo/MtkEpoClientManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startEpoDownload()V

    return-void
.end method

.method private addListener(Ljava/util/List;Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    .locals 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ">;",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/epo/IMtkEpoStatusListener;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 645
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :goto_1
    return-void

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private calculateHashValue()Ljava/lang/String;
    .locals 13

    .prologue
    .line 340
    const/4 v6, 0x0

    .line 341
    .local v6, hashValue:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v11, "/data/misc/EPOTMP.DAT"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, EPOFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 346
    .local v8, md5:Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 348
    .local v5, fis:Ljava/io/FileInputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 349
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 350
    .local v2, count:I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    .line 351
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 369
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 372
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v6

    .line 353
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #md5:Ljava/security/MessageDigest;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 355
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 357
    .local v3, digest:[B
    new-instance v9, Ljava/lang/StringBuilder;

    array-length v11, v3

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 359
    .local v10, tmp:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v11, v3

    if-ge v7, v11, :cond_3

    .line 361
    aget-byte v11, v3, v7

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 365
    :cond_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 367
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method private checkBeforeDownload()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 461
    iput-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 463
    iget-boolean v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    if-nez v3, :cond_0

    .line 464
    const-string v1, "WARNING: EPO is disabled"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 466
    const/4 v1, 0x3

    .line 495
    :goto_0
    return v1

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 470
    :try_start_0
    iget v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    if-ne v4, v1, :cond_1

    .line 471
    const-string v2, "WARNING: download procedure is running"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 472
    monitor-exit v3

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 476
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isNetworkAvailable()Z

    move-result v0

    .line 479
    .local v0, isNetworkEnabled:Z
    if-eqz v0, :cond_2

    .line 480
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 481
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendMessageToStartDownload()V

    .line 494
    monitor-exit v3

    move v1, v2

    .line 495
    goto :goto_0

    .line 483
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: isNetworkEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " FileExpired="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 487
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v2, v1, :cond_3

    .line 488
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 492
    :goto_1
    const/4 v1, 0x2

    monitor-exit v3

    goto :goto_0

    .line 490
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private checkBeforeStartTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-nez v1, :cond_0

    .line 444
    const-string v0, "WARNING: auto update is disabled"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 448
    :cond_0
    iget v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    if-eq v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    if-ne v1, v0, :cond_4

    .line 449
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBeforeStartTimer: UpdateResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file exist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/misc/EPO.DAT"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/data/misc/EPOHAL.DAT"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    goto :goto_0

    .line 449
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 452
    :cond_4
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    if-nez v0, :cond_5

    .line 453
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    goto :goto_0

    .line 455
    :cond_5
    const-string v0, "WARNING: the timer is already running"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteEpoFile()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/EPOTMP.DAT"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/misc/EPO.MD5"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 172
    return-void
.end method

.method private dumpListener(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/epo/IMtkEpoStatusListener;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===================== size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    return-void
.end method

.method private epoDownload()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 523
    invoke-direct {p0, v8}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 524
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    const-string v5, "EPO.DAT"

    const-string v6, "/data/misc/EPOTMP.DAT"

    iget v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/epo/MtkEpoClientManagerService;->UrlDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 560
    :goto_0
    return v0

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_1

    move v0, v9

    .line 529
    goto :goto_0

    .line 530
    :cond_1
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 532
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    if-nez v0, :cond_2

    .line 533
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    const-string v5, "EPO.MD5"

    const-string v6, "/data/misc/EPO.MD5"

    iget v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/epo/MtkEpoClientManagerService;->UrlDownload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 535
    goto :goto_0

    .line 538
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_3

    move v0, v9

    .line 539
    goto :goto_0

    .line 540
    :cond_3
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 542
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isEPOFileValid()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v8

    .line 543
    goto :goto_0

    .line 545
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_5

    move v0, v9

    .line 546
    goto :goto_0

    .line 547
    :cond_5
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 549
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->updateEpoFile2Mnl()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v8

    .line 550
    goto :goto_0

    .line 552
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v0, v9, :cond_7

    move v0, v9

    .line 553
    goto :goto_0

    .line 554
    :cond_7
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 556
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->deleteEpoFile()V

    .line 558
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendEpoEventToAgps(I)V

    move v0, v9

    .line 560
    goto :goto_0
.end method

.method private fileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getHashValue()Ljava/lang/String;
    .locals 11

    .prologue
    .line 377
    const/4 v6, 0x0

    .line 378
    .local v6, hashValue:Ljava/lang/String;
    const/4 v0, 0x0

    .line 380
    .local v0, MD5File:Ljava/io/File;
    iget v9, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 381
    iget-object v9, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAWSHash:Ljava/lang/String;

    .line 410
    :goto_0
    return-object v9

    .line 385
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/misc/EPO.MD5"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    .end local v0           #MD5File:Ljava/io/File;
    .local v1, MD5File:Ljava/io/File;
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 387
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 388
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 389
    .local v7, reader:Ljava/io/InputStreamReader;
    if-nez v7, :cond_1

    .line 390
    const-string v9, "ERR: retrieve input stream reader failed..."

    invoke-direct {p0, v9}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    move-object v9, v6

    .line 391
    goto :goto_0

    .line 394
    .end local v0           #MD5File:Ljava/io/File;
    .restart local v1       #MD5File:Ljava/io/File;
    :cond_1
    const/16 v9, 0x46

    new-array v2, v9, [C

    .line 396
    .local v2, buffer:[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, count:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 399
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 407
    .end local v2           #buffer:[C
    .end local v3           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #reader:Ljava/io/InputStreamReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 408
    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    .local v4, ex:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .end local v4           #ex:Ljava/lang/Exception;
    :goto_3
    move-object v9, v6

    .line 410
    goto :goto_0

    .line 402
    .end local v0           #MD5File:Ljava/io/File;
    .restart local v1       #MD5File:Ljava/io/File;
    .restart local v2       #buffer:[C
    .restart local v3       #count:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/InputStreamReader;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v9, 0x0

    const/16 v10, 0x20

    :try_start_2
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 405
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2           #buffer:[C
    .end local v3           #count:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #reader:Ljava/io/InputStreamReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_3
    move-object v0, v1

    .line 409
    .end local v1           #MD5File:Ljava/io/File;
    .restart local v0       #MD5File:Ljava/io/File;
    goto :goto_3

    .line 407
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private isEPOFileValid()Z
    .locals 3

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->calculateHashValue()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, EPOHashValue:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->getHashValue()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, initialHashValue:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v2, 0x1

    .line 336
    :goto_0
    return v2

    .line 330
    :cond_0
    const-string v2, "ERR: Epo file is invalid"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 336
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 333
    :cond_1
    const-string v2, "ERR: Hash value is null..."

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isGpsAvailable()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 160
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 163
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 211
    const-string v0, "[MtkEpoClientManagerService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 214
    const-string v0, "[MtkEpoClientManagerService]"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method private removeListener(Ljava/util/List;Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    .locals 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ">;",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/epo/IMtkEpoStatusListener;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 654
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/epo/IMtkEpoStatusListener;

    invoke-interface {v1}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 659
    :cond_0
    return-void

    .line 653
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendDataToAllListener(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/epo/IMtkEpoStatusListener;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/epo/IMtkEpoStatusListener;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 671
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/epo/IMtkEpoStatusListener;

    invoke-interface {v2, p2}, Lcom/mediatek/common/epo/IMtkEpoStatusListener;->onStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/epo/IMtkEpoStatusListener;

    invoke-direct {p0, p1, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->removeListener(Ljava/util/List;Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: RemoteException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 677
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private sendEpoEventToAgps(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.agps.EPO_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method private sendMessageToStartDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 500
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iput v2, v0, Landroid/os/Message;->what:I

    .line 502
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.epo.STATUS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    const-string v1, "auto"

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method private setDownloadType(I)V
    .locals 2
    .parameter "Type"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDownloadType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 242
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    .line 243
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAWSAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileFTPAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private startEpoDownload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 564
    const/4 v1, 0x1

    .line 565
    .local v1, ret:Z
    const-string v2, "startEpoDownload ++"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 568
    const/16 v2, 0xc8

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 570
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    if-ge v0, v2, :cond_1

    .line 571
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoChangeDownloadType:Z

    if-ne v2, v4, :cond_0

    .line 572
    iget v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    invoke-direct {p0, v0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->updateDownloadMechanism(II)V

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->epoDownload()Z

    move-result v1

    .line 575
    if-eq v1, v4, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v2, v4, :cond_2

    .line 580
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mManualStop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 583
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    if-ne v2, v4, :cond_3

    .line 584
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 585
    const/16 v2, 0xcb

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 594
    :goto_1
    iget-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v2, v4, :cond_5

    .line 595
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 599
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 600
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoStatus:I

    .line 601
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    const/16 v2, 0x12c

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 603
    const-string v2, "startEpoDownload --"

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 604
    return-void

    .line 577
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: retry download="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_3
    if-ne v1, v4, :cond_4

    .line 587
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z

    .line 588
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 589
    const/16 v2, 0xc9

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    goto :goto_1

    .line 601
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 591
    :cond_4
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I

    .line 592
    const/16 v2, 0xca

    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    goto :goto_1

    .line 597
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 221
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "cancel timer"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    .line 228
    return-void
.end method

.method private update2Mmi(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 614
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    .line 616
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendDataToAllListener(Ljava/util/List;I)V

    .line 617
    return-void
.end method

.method private updateDownloadMechanism(II)V
    .locals 2
    .parameter "times"
    .parameter "Loop"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDownloadMechanism times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 233
    div-int/lit8 v0, p2, 0x2

    if-ge v0, p1, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->setDownloadType(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->setDownloadType(I)V

    goto :goto_0
.end method

.method private updateEpoFile2Mnl()Z
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 418
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->updateEPOFile()I

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "ERR: updateEpoFile2Mnl failed"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->loge(Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    .line 422
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addStatusListener(Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->addListener(Ljava/util/List;Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addStatusListener] len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 833
    const-string v0, "[disable]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 836
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    .line 837
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 838
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 825
    const-string v0, "[enable]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 826
    iput-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    .line 827
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    if-ne v0, v1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 831
    return-void
.end method

.method public enableAutoDownload(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enableAutoDownload] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 630
    iput-boolean p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    .line 631
    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    if-ne v0, v2, :cond_1

    .line 632
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimerStatus:I

    if-nez v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V

    .line 640
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendStatusUpdate()V

    .line 641
    return-void

    .line 635
    :cond_0
    const-string v0, "WARNING: timer is already running"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->stopTimer()V

    goto :goto_0
.end method

.method public epoTest1()V
    .locals 3

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, data1:I
    const/4 v1, 0x0

    .line 864
    .local v1, data2:I
    const/4 v2, 0x0

    .line 866
    .local v2, data3:I
    add-int v0, v1, v2

    .line 867
    add-int v0, v1, v2

    .line 868
    add-int v0, v1, v2

    .line 869
    add-int v0, v1, v2

    .line 870
    add-int v0, v1, v2

    .line 871
    add-int v0, v1, v2

    .line 872
    add-int v0, v1, v2

    .line 873
    add-int v0, v1, v2

    .line 874
    add-int v0, v1, v2

    .line 875
    add-int v0, v1, v2

    .line 876
    add-int v0, v1, v2

    .line 877
    add-int v0, v1, v2

    .line 878
    add-int v0, v1, v2

    .line 879
    add-int v0, v1, v2

    .line 880
    add-int v0, v1, v2

    .line 881
    add-int v0, v1, v2

    .line 882
    add-int v0, v1, v2

    .line 883
    add-int v0, v1, v2

    .line 884
    add-int v0, v1, v2

    .line 885
    add-int v0, v1, v2

    .line 886
    add-int v0, v1, v2

    .line 887
    add-int v0, v1, v2

    .line 888
    add-int v0, v1, v2

    .line 889
    add-int v0, v1, v2

    .line 890
    add-int v0, v1, v2

    .line 891
    add-int v0, v1, v2

    .line 892
    add-int v0, v1, v2

    .line 893
    add-int v0, v1, v2

    .line 894
    add-int v0, v1, v2

    .line 895
    add-int v0, v1, v2

    .line 896
    add-int v0, v1, v2

    .line 897
    add-int v0, v1, v2

    .line 898
    add-int v0, v1, v2

    .line 899
    add-int v0, v1, v2

    .line 900
    add-int v0, v1, v2

    .line 901
    add-int v0, v1, v2

    .line 902
    add-int v0, v1, v2

    .line 903
    add-int v0, v1, v2

    .line 904
    add-int v0, v1, v2

    .line 905
    add-int v0, v1, v2

    .line 906
    add-int v0, v1, v2

    .line 907
    add-int v0, v1, v2

    .line 908
    add-int v0, v1, v2

    .line 909
    add-int v0, v1, v2

    .line 910
    add-int v0, v1, v2

    .line 911
    add-int v0, v1, v2

    .line 912
    add-int v0, v1, v2

    .line 913
    add-int v0, v1, v2

    .line 914
    add-int v0, v1, v2

    .line 915
    add-int v0, v1, v2

    .line 916
    add-int v0, v1, v2

    .line 917
    add-int v0, v1, v2

    .line 918
    add-int v0, v1, v2

    .line 919
    add-int v0, v1, v2

    .line 920
    add-int v0, v1, v2

    .line 921
    add-int v0, v1, v2

    .line 922
    add-int v0, v1, v2

    .line 923
    add-int v0, v1, v2

    .line 924
    add-int v0, v1, v2

    .line 925
    add-int v0, v1, v2

    .line 926
    add-int v0, v1, v2

    .line 927
    add-int v0, v1, v2

    .line 928
    add-int v0, v1, v2

    .line 929
    add-int v0, v1, v2

    .line 930
    add-int v0, v1, v2

    .line 931
    add-int v0, v1, v2

    .line 932
    add-int v0, v1, v2

    .line 933
    add-int v0, v1, v2

    .line 934
    add-int v0, v1, v2

    .line 935
    add-int v0, v1, v2

    .line 936
    add-int v0, v1, v2

    .line 937
    add-int v0, v1, v2

    .line 938
    add-int v0, v1, v2

    .line 939
    add-int v0, v1, v2

    .line 940
    add-int v0, v1, v2

    .line 941
    add-int v0, v1, v2

    .line 942
    add-int v0, v1, v2

    .line 943
    add-int v0, v1, v2

    .line 944
    add-int v0, v1, v2

    .line 945
    add-int v0, v1, v2

    .line 946
    add-int v0, v1, v2

    .line 947
    add-int v0, v1, v2

    .line 948
    add-int v0, v1, v2

    .line 949
    add-int v0, v1, v2

    .line 950
    add-int v0, v1, v2

    .line 951
    add-int v0, v1, v2

    .line 952
    add-int v0, v1, v2

    .line 953
    add-int v0, v1, v2

    .line 954
    add-int v0, v1, v2

    .line 955
    add-int v0, v1, v2

    .line 956
    add-int v0, v1, v2

    .line 957
    add-int v0, v1, v2

    .line 958
    add-int v0, v1, v2

    .line 959
    add-int v0, v1, v2

    .line 960
    add-int v0, v1, v2

    .line 961
    add-int v0, v1, v2

    .line 962
    add-int v0, v1, v2

    .line 963
    add-int v0, v1, v2

    .line 964
    add-int v0, v1, v2

    .line 965
    add-int v0, v1, v2

    .line 966
    add-int v0, v1, v2

    .line 967
    add-int v0, v1, v2

    .line 968
    add-int v0, v1, v2

    .line 969
    add-int v0, v1, v2

    .line 970
    add-int v0, v1, v2

    .line 971
    add-int v0, v1, v2

    .line 972
    add-int v0, v1, v2

    .line 973
    add-int v0, v1, v2

    .line 974
    add-int v0, v1, v2

    .line 975
    add-int v0, v1, v2

    .line 976
    add-int v0, v1, v2

    .line 977
    add-int v0, v1, v2

    .line 978
    add-int v0, v1, v2

    .line 979
    add-int v0, v1, v2

    .line 980
    add-int v0, v1, v2

    .line 981
    add-int v0, v1, v2

    .line 982
    add-int v0, v1, v2

    .line 983
    add-int v0, v1, v2

    .line 984
    add-int v0, v1, v2

    .line 985
    add-int v0, v1, v2

    .line 986
    add-int v0, v1, v2

    .line 987
    add-int v0, v1, v2

    .line 988
    add-int v0, v1, v2

    .line 989
    add-int v0, v1, v2

    .line 990
    add-int v0, v1, v2

    .line 991
    add-int v0, v1, v2

    .line 992
    add-int v0, v1, v2

    .line 993
    add-int v0, v1, v2

    .line 994
    add-int v0, v1, v2

    .line 995
    add-int v0, v1, v2

    .line 996
    add-int v0, v1, v2

    .line 997
    add-int v0, v1, v2

    .line 998
    add-int v0, v1, v2

    .line 999
    add-int v0, v1, v2

    .line 1000
    add-int v0, v1, v2

    .line 1001
    add-int v0, v1, v2

    .line 1002
    add-int v0, v1, v2

    .line 1003
    add-int v0, v1, v2

    .line 1004
    add-int v0, v1, v2

    .line 1005
    add-int v0, v1, v2

    .line 1006
    add-int v0, v1, v2

    .line 1007
    add-int v0, v1, v2

    .line 1008
    add-int v0, v1, v2

    .line 1009
    add-int v0, v1, v2

    .line 1010
    add-int v0, v1, v2

    .line 1011
    add-int v0, v1, v2

    .line 1012
    add-int v0, v1, v2

    .line 1013
    add-int v0, v1, v2

    .line 1014
    add-int v0, v1, v2

    .line 1015
    add-int v0, v1, v2

    .line 1016
    add-int v0, v1, v2

    .line 1017
    add-int v0, v1, v2

    .line 1018
    add-int v0, v1, v2

    .line 1019
    add-int v0, v1, v2

    .line 1020
    add-int v0, v1, v2

    .line 1021
    add-int v0, v1, v2

    .line 1022
    add-int v0, v1, v2

    .line 1023
    add-int v0, v1, v2

    .line 1024
    add-int v0, v1, v2

    .line 1025
    add-int v0, v1, v2

    .line 1026
    add-int v0, v1, v2

    .line 1027
    add-int v0, v1, v2

    .line 1028
    add-int v0, v1, v2

    .line 1029
    add-int v0, v1, v2

    .line 1030
    add-int v0, v1, v2

    .line 1031
    add-int v0, v1, v2

    .line 1032
    add-int v0, v1, v2

    .line 1033
    add-int v0, v1, v2

    .line 1034
    add-int v0, v1, v2

    .line 1035
    add-int v0, v1, v2

    .line 1036
    add-int v0, v1, v2

    .line 1037
    add-int v0, v1, v2

    .line 1038
    add-int v0, v1, v2

    .line 1039
    add-int v0, v1, v2

    .line 1040
    add-int v0, v1, v2

    .line 1041
    add-int v0, v1, v2

    .line 1042
    add-int v0, v1, v2

    .line 1043
    add-int v0, v1, v2

    .line 1044
    add-int v0, v1, v2

    .line 1045
    add-int v0, v1, v2

    .line 1046
    add-int v0, v1, v2

    .line 1047
    add-int v0, v1, v2

    .line 1048
    add-int v0, v1, v2

    .line 1049
    add-int v0, v1, v2

    .line 1050
    add-int v0, v1, v2

    .line 1051
    add-int v0, v1, v2

    .line 1052
    add-int v0, v1, v2

    .line 1053
    add-int v0, v1, v2

    .line 1054
    add-int v0, v1, v2

    .line 1055
    add-int v0, v1, v2

    .line 1056
    add-int v0, v1, v2

    .line 1057
    add-int v0, v1, v2

    .line 1058
    add-int v0, v1, v2

    .line 1059
    add-int v0, v1, v2

    .line 1060
    add-int v0, v1, v2

    .line 1061
    add-int v0, v1, v2

    .line 1062
    add-int v0, v1, v2

    .line 1063
    add-int v0, v1, v2

    .line 1064
    add-int v0, v1, v2

    .line 1065
    add-int v0, v1, v2

    .line 1066
    add-int v0, v1, v2

    .line 1067
    add-int v0, v1, v2

    .line 1068
    add-int v0, v1, v2

    .line 1069
    add-int v0, v1, v2

    .line 1070
    add-int v0, v1, v2

    .line 1071
    add-int v0, v1, v2

    .line 1072
    add-int v0, v1, v2

    .line 1073
    add-int v0, v1, v2

    .line 1074
    add-int v0, v1, v2

    .line 1075
    add-int v0, v1, v2

    .line 1076
    add-int v0, v1, v2

    .line 1077
    add-int v0, v1, v2

    .line 1078
    add-int v0, v1, v2

    .line 1079
    add-int v0, v1, v2

    .line 1080
    add-int v0, v1, v2

    .line 1081
    add-int v0, v1, v2

    .line 1082
    add-int v0, v1, v2

    .line 1083
    add-int v0, v1, v2

    .line 1084
    add-int v0, v1, v2

    .line 1085
    add-int v0, v1, v2

    .line 1086
    add-int v0, v1, v2

    .line 1087
    add-int v0, v1, v2

    .line 1088
    add-int v0, v1, v2

    .line 1089
    add-int v0, v1, v2

    .line 1090
    add-int v0, v1, v2

    .line 1091
    add-int v0, v1, v2

    .line 1092
    add-int v0, v1, v2

    .line 1093
    add-int v0, v1, v2

    .line 1094
    add-int v0, v1, v2

    .line 1095
    add-int v0, v1, v2

    .line 1096
    add-int v0, v1, v2

    .line 1097
    add-int v0, v1, v2

    .line 1098
    add-int v0, v1, v2

    .line 1099
    add-int v0, v1, v2

    .line 1100
    add-int v0, v1, v2

    .line 1101
    add-int v0, v1, v2

    .line 1102
    add-int v0, v1, v2

    .line 1103
    add-int v0, v1, v2

    .line 1104
    add-int v0, v1, v2

    .line 1105
    add-int v0, v1, v2

    .line 1106
    add-int v0, v1, v2

    .line 1107
    add-int v0, v1, v2

    .line 1108
    add-int v0, v1, v2

    .line 1109
    add-int v0, v1, v2

    .line 1110
    add-int v0, v1, v2

    .line 1111
    add-int v0, v1, v2

    .line 1112
    add-int v0, v1, v2

    .line 1113
    add-int v0, v1, v2

    .line 1114
    add-int v0, v1, v2

    .line 1115
    add-int v0, v1, v2

    .line 1116
    add-int v0, v1, v2

    .line 1117
    add-int v0, v1, v2

    .line 1118
    add-int v0, v1, v2

    .line 1119
    add-int v0, v1, v2

    .line 1120
    add-int v0, v1, v2

    .line 1121
    add-int v0, v1, v2

    .line 1122
    add-int v0, v1, v2

    .line 1123
    add-int v0, v1, v2

    .line 1124
    add-int v0, v1, v2

    .line 1125
    add-int v0, v1, v2

    .line 1126
    add-int v0, v1, v2

    .line 1127
    add-int v0, v1, v2

    .line 1128
    add-int v0, v1, v2

    .line 1129
    add-int v0, v1, v2

    .line 1130
    add-int v0, v1, v2

    .line 1131
    add-int v0, v1, v2

    .line 1132
    add-int v0, v1, v2

    .line 1133
    add-int v0, v1, v2

    .line 1134
    add-int v0, v1, v2

    .line 1135
    add-int v0, v1, v2

    .line 1136
    add-int v0, v1, v2

    .line 1137
    add-int v0, v1, v2

    .line 1138
    add-int v0, v1, v2

    .line 1139
    add-int v0, v1, v2

    .line 1140
    add-int v0, v1, v2

    .line 1141
    add-int v0, v1, v2

    .line 1142
    add-int v0, v1, v2

    .line 1143
    add-int v0, v1, v2

    .line 1144
    add-int v0, v1, v2

    .line 1145
    add-int v0, v1, v2

    .line 1146
    add-int v0, v1, v2

    .line 1147
    add-int v0, v1, v2

    .line 1148
    add-int v0, v1, v2

    .line 1149
    add-int v0, v1, v2

    .line 1150
    add-int v0, v1, v2

    .line 1151
    add-int v0, v1, v2

    .line 1152
    add-int v0, v1, v2

    .line 1153
    add-int v0, v1, v2

    .line 1154
    add-int v0, v1, v2

    .line 1155
    add-int v0, v1, v2

    .line 1156
    add-int v0, v1, v2

    .line 1157
    add-int v0, v1, v2

    .line 1158
    add-int v0, v1, v2

    .line 1159
    add-int v0, v1, v2

    .line 1160
    add-int v0, v1, v2

    .line 1161
    add-int v0, v1, v2

    .line 1162
    add-int v0, v1, v2

    .line 1163
    add-int v0, v1, v2

    .line 1164
    add-int v0, v1, v2

    .line 1165
    add-int v0, v1, v2

    .line 1166
    add-int v0, v1, v2

    .line 1167
    add-int v0, v1, v2

    .line 1168
    add-int v0, v1, v2

    .line 1169
    add-int v0, v1, v2

    .line 1170
    add-int v0, v1, v2

    .line 1171
    add-int v0, v1, v2

    .line 1172
    add-int v0, v1, v2

    .line 1173
    add-int v0, v1, v2

    .line 1174
    add-int v0, v1, v2

    .line 1175
    add-int v0, v1, v2

    .line 1176
    add-int v0, v1, v2

    .line 1177
    add-int v0, v1, v2

    .line 1178
    add-int v0, v1, v2

    .line 1179
    add-int v0, v1, v2

    .line 1180
    add-int v0, v1, v2

    .line 1181
    add-int v0, v1, v2

    .line 1182
    add-int v0, v1, v2

    .line 1183
    add-int v0, v1, v2

    .line 1184
    add-int v0, v1, v2

    .line 1185
    add-int v0, v1, v2

    .line 1186
    add-int v0, v1, v2

    .line 1187
    add-int v0, v1, v2

    .line 1188
    add-int v0, v1, v2

    .line 1189
    add-int v0, v1, v2

    .line 1190
    add-int v0, v1, v2

    .line 1191
    add-int v0, v1, v2

    .line 1192
    add-int v0, v1, v2

    .line 1193
    add-int v0, v1, v2

    .line 1194
    add-int v0, v1, v2

    .line 1195
    add-int v0, v1, v2

    .line 1196
    add-int v0, v1, v2

    .line 1197
    add-int v0, v1, v2

    .line 1198
    add-int v0, v1, v2

    .line 1199
    add-int v0, v1, v2

    .line 1200
    add-int v0, v1, v2

    .line 1201
    add-int v0, v1, v2

    .line 1202
    add-int v0, v1, v2

    .line 1203
    add-int v0, v1, v2

    .line 1204
    add-int v0, v1, v2

    .line 1205
    add-int v0, v1, v2

    .line 1206
    add-int v0, v1, v2

    .line 1207
    add-int v0, v1, v2

    .line 1208
    add-int v0, v1, v2

    .line 1209
    add-int v0, v1, v2

    .line 1210
    add-int v0, v1, v2

    .line 1211
    add-int v0, v1, v2

    .line 1212
    add-int v0, v1, v2

    .line 1213
    add-int v0, v1, v2

    .line 1214
    add-int v0, v1, v2

    .line 1215
    add-int v0, v1, v2

    .line 1216
    add-int v0, v1, v2

    .line 1217
    add-int v0, v1, v2

    .line 1218
    add-int v0, v1, v2

    .line 1219
    add-int v0, v1, v2

    .line 1220
    add-int v0, v1, v2

    .line 1221
    add-int v0, v1, v2

    .line 1222
    add-int v0, v1, v2

    .line 1223
    add-int v0, v1, v2

    .line 1224
    add-int v0, v1, v2

    .line 1225
    add-int v0, v1, v2

    .line 1226
    add-int v0, v1, v2

    .line 1227
    add-int v0, v1, v2

    .line 1228
    add-int v0, v1, v2

    .line 1229
    add-int v0, v1, v2

    .line 1230
    add-int v0, v1, v2

    .line 1231
    add-int v0, v1, v2

    .line 1232
    add-int v0, v1, v2

    .line 1233
    add-int v0, v1, v2

    .line 1234
    add-int v0, v1, v2

    .line 1235
    add-int v0, v1, v2

    .line 1236
    add-int v0, v1, v2

    .line 1237
    add-int v0, v1, v2

    .line 1238
    add-int v0, v1, v2

    .line 1239
    add-int v0, v1, v2

    .line 1240
    add-int v0, v1, v2

    .line 1241
    add-int v0, v1, v2

    .line 1242
    add-int v0, v1, v2

    .line 1243
    add-int v0, v1, v2

    .line 1244
    add-int v0, v1, v2

    .line 1245
    add-int v0, v1, v2

    .line 1246
    add-int v0, v1, v2

    .line 1247
    add-int v0, v1, v2

    .line 1248
    add-int v0, v1, v2

    .line 1249
    return-void
.end method

.method public epoTest2()V
    .locals 3

    .prologue
    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, data1:I
    const/4 v1, 0x0

    .line 1254
    .local v1, data2:I
    const/4 v2, 0x0

    .line 1256
    .local v2, data3:I
    add-int v0, v1, v2

    .line 1257
    add-int v0, v1, v2

    .line 1258
    add-int v0, v1, v2

    .line 1259
    add-int v0, v1, v2

    .line 1260
    add-int v0, v1, v2

    .line 1261
    add-int v0, v1, v2

    .line 1262
    add-int v0, v1, v2

    .line 1263
    add-int v0, v1, v2

    .line 1264
    add-int v0, v1, v2

    .line 1265
    add-int v0, v1, v2

    .line 1266
    add-int v0, v1, v2

    .line 1267
    add-int v0, v1, v2

    .line 1268
    add-int v0, v1, v2

    .line 1269
    add-int v0, v1, v2

    .line 1270
    add-int v0, v1, v2

    .line 1271
    add-int v0, v1, v2

    .line 1272
    add-int v0, v1, v2

    .line 1273
    add-int v0, v1, v2

    .line 1274
    add-int v0, v1, v2

    .line 1275
    add-int v0, v1, v2

    .line 1276
    add-int v0, v1, v2

    .line 1277
    add-int v0, v1, v2

    .line 1278
    add-int v0, v1, v2

    .line 1279
    add-int v0, v1, v2

    .line 1280
    add-int v0, v1, v2

    .line 1281
    add-int v0, v1, v2

    .line 1282
    add-int v0, v1, v2

    .line 1283
    add-int v0, v1, v2

    .line 1284
    add-int v0, v1, v2

    .line 1285
    add-int v0, v1, v2

    .line 1286
    add-int v0, v1, v2

    .line 1287
    add-int v0, v1, v2

    .line 1288
    add-int v0, v1, v2

    .line 1289
    add-int v0, v1, v2

    .line 1290
    add-int v0, v1, v2

    .line 1291
    add-int v0, v1, v2

    .line 1292
    add-int v0, v1, v2

    .line 1293
    add-int v0, v1, v2

    .line 1294
    add-int v0, v1, v2

    .line 1295
    add-int v0, v1, v2

    .line 1296
    add-int v0, v1, v2

    .line 1297
    add-int v0, v1, v2

    .line 1298
    add-int v0, v1, v2

    .line 1299
    add-int v0, v1, v2

    .line 1300
    add-int v0, v1, v2

    .line 1301
    add-int v0, v1, v2

    .line 1302
    add-int v0, v1, v2

    .line 1303
    add-int v0, v1, v2

    .line 1304
    add-int v0, v1, v2

    .line 1305
    add-int v0, v1, v2

    .line 1306
    add-int v0, v1, v2

    .line 1307
    add-int v0, v1, v2

    .line 1308
    add-int v0, v1, v2

    .line 1309
    add-int v0, v1, v2

    .line 1310
    add-int v0, v1, v2

    .line 1311
    add-int v0, v1, v2

    .line 1312
    add-int v0, v1, v2

    .line 1313
    add-int v0, v1, v2

    .line 1314
    add-int v0, v1, v2

    .line 1315
    add-int v0, v1, v2

    .line 1316
    add-int v0, v1, v2

    .line 1317
    add-int v0, v1, v2

    .line 1318
    add-int v0, v1, v2

    .line 1319
    add-int v0, v1, v2

    .line 1320
    add-int v0, v1, v2

    .line 1321
    add-int v0, v1, v2

    .line 1322
    add-int v0, v1, v2

    .line 1323
    add-int v0, v1, v2

    .line 1324
    add-int v0, v1, v2

    .line 1325
    add-int v0, v1, v2

    .line 1326
    add-int v0, v1, v2

    .line 1327
    add-int v0, v1, v2

    .line 1328
    add-int v0, v1, v2

    .line 1329
    add-int v0, v1, v2

    .line 1330
    add-int v0, v1, v2

    .line 1331
    add-int v0, v1, v2

    .line 1332
    add-int v0, v1, v2

    .line 1333
    add-int v0, v1, v2

    .line 1334
    add-int v0, v1, v2

    .line 1335
    add-int v0, v1, v2

    .line 1336
    add-int v0, v1, v2

    .line 1337
    add-int v0, v1, v2

    .line 1338
    add-int v0, v1, v2

    .line 1339
    add-int v0, v1, v2

    .line 1340
    add-int v0, v1, v2

    .line 1341
    add-int v0, v1, v2

    .line 1342
    add-int v0, v1, v2

    .line 1343
    add-int v0, v1, v2

    .line 1344
    add-int v0, v1, v2

    .line 1345
    add-int v0, v1, v2

    .line 1346
    add-int v0, v1, v2

    .line 1347
    add-int v0, v1, v2

    .line 1348
    add-int v0, v1, v2

    .line 1349
    add-int v0, v1, v2

    .line 1350
    add-int v0, v1, v2

    .line 1351
    add-int v0, v1, v2

    .line 1352
    add-int v0, v1, v2

    .line 1353
    add-int v0, v1, v2

    .line 1354
    add-int v0, v1, v2

    .line 1355
    add-int v0, v1, v2

    .line 1356
    add-int v0, v1, v2

    .line 1357
    add-int v0, v1, v2

    .line 1358
    add-int v0, v1, v2

    .line 1359
    add-int v0, v1, v2

    .line 1360
    add-int v0, v1, v2

    .line 1361
    add-int v0, v1, v2

    .line 1362
    add-int v0, v1, v2

    .line 1363
    add-int v0, v1, v2

    .line 1364
    add-int v0, v1, v2

    .line 1365
    add-int v0, v1, v2

    .line 1366
    add-int v0, v1, v2

    .line 1367
    add-int v0, v1, v2

    .line 1368
    add-int v0, v1, v2

    .line 1369
    add-int v0, v1, v2

    .line 1370
    add-int v0, v1, v2

    .line 1371
    add-int v0, v1, v2

    .line 1372
    add-int v0, v1, v2

    .line 1373
    add-int v0, v1, v2

    .line 1374
    add-int v0, v1, v2

    .line 1375
    add-int v0, v1, v2

    .line 1376
    add-int v0, v1, v2

    .line 1377
    add-int v0, v1, v2

    .line 1378
    add-int v0, v1, v2

    .line 1379
    add-int v0, v1, v2

    .line 1380
    add-int v0, v1, v2

    .line 1381
    return-void
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9
    .parameter "cmd"
    .parameter "extra"

    .prologue
    const-wide/32 v7, 0x5265c00

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[extraCommand] cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 756
    const-string v4, "USING_XML"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 757
    new-instance v0, Lcom/mediatek/common/epo/MtkEpoXmlLoader;

    invoke-direct {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;-><init>()V

    .line 758
    .local v0, epoXmlLoader:Lcom/mediatek/common/epo/MtkEpoXmlLoader;
    const-string v4, "/etc/epo_conf.xml"

    invoke-virtual {v0, v4}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->updateEpoProfile(Ljava/lang/String;)V

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->getEpoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->enable()V

    .line 766
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->getAutoEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    invoke-virtual {p0, v6}, Lcom/mediatek/epo/MtkEpoClientManagerService;->enableAutoDownload(Z)V

    .line 772
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/common/epo/MtkEpoXmlLoader;->getUpdatePeriod()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 775
    iget-wide v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    .line 776
    iput-wide v7, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setUpdatePeriod] interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 821
    .end local v0           #epoXmlLoader:Lcom/mediatek/common/epo/MtkEpoXmlLoader;
    :cond_0
    :goto_2
    :pswitch_0
    return v3

    .line 764
    .restart local v0       #epoXmlLoader:Lcom/mediatek/common/epo/MtkEpoXmlLoader;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->disable()V

    goto :goto_0

    .line 769
    :cond_2
    invoke-virtual {p0, v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->enableAutoDownload(Z)V

    goto :goto_1

    .line 780
    .end local v0           #epoXmlLoader:Lcom/mediatek/common/epo/MtkEpoXmlLoader;
    :cond_3
    const-string v4, "RESET_COVERAGE_DATA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 782
    const-string v4, "DUMP_COVERAGE_DATA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 784
    const-string v4, "EXTRA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 785
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 786
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 788
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->updateEpoFile2Mnl()Z

    .line 789
    const/16 v4, 0x12c

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->update2Mmi(I)V

    .line 790
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isGpsAvailable()Z

    .line 791
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->isEPOFileValid()Z

    .line 792
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->calculateHashValue()Ljava/lang/String;

    .line 793
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->deleteEpoFile()V

    .line 794
    iget-object v4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->dumpListener(Ljava/util/List;)V

    .line 795
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->getHashValue()Ljava/lang/String;

    .line 796
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->epoDownload()Z

    .line 797
    const-string v4, "123"

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->fileExist(Ljava/lang/String;)Z

    .line 798
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->sendMessageToStartDownload()V

    .line 799
    invoke-virtual {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->epoTest1()V

    .line 800
    invoke-virtual {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->epoTest2()V

    goto :goto_2

    .line 807
    .end local v2           #type:I
    :cond_4
    const-string v4, "CONFIG_TYPE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 808
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 809
    .restart local v2       #type:I
    if-gt v2, v6, :cond_5

    .line 810
    invoke-direct {p0, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->setDownloadType(I)V

    .line 812
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[extra config]TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 813
    .end local v2           #type:I
    :cond_6
    const-string v4, "CONFIG_STRESS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 814
    const-string v4, "STRESS_TEST"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 815
    .local v1, stree:Z
    iput-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoChangeDownloadType:Z

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[extra config]STRESS_TEST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 817
    .end local v1           #stree:Z
    :cond_7
    const-string v4, "Get_Config"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 818
    iget v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadType:I

    goto/16 :goto_2

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAutoDownloadStatus()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    return v0
.end method

.method public getEpoFileInfo()Lcom/mediatek/common/epo/MtkEpoFileInfo;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 696
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 698
    .local v1, locationManager:Landroid/location/LocationManager;
    const/4 v3, 0x3

    new-array v2, v3, [J

    .line 700
    .local v2, times:[J
    aput-wide v5, v2, v7

    .line 701
    aput-wide v5, v2, v8

    .line 702
    aput-wide v5, v2, v9

    .line 704
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getFileTime([J)I

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    const-string v3, "ERR: getFileTime failure"

    invoke-direct {p0, v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    .line 712
    :goto_0
    return-object v0

    .line 708
    :cond_0
    new-instance v0, Lcom/mediatek/common/epo/MtkEpoFileInfo;

    invoke-direct {v0}, Lcom/mediatek/common/epo/MtkEpoFileInfo;-><init>()V

    .line 709
    .local v0, fileInfo:Lcom/mediatek/common/epo/MtkEpoFileInfo;
    aget-wide v3, v2, v7

    iput-wide v3, v0, Lcom/mediatek/common/epo/MtkEpoFileInfo;->startTime:J

    .line 710
    aget-wide v3, v2, v8

    iput-wide v3, v0, Lcom/mediatek/common/epo/MtkEpoFileInfo;->downloadTime:J

    .line 711
    aget-wide v3, v2, v9

    iput-wide v3, v0, Lcom/mediatek/common/epo/MtkEpoFileInfo;->expireTime:J

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getProgress] mManualStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 845
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    .line 846
    const/16 v0, 0xcc

    .line 848
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mCurrentProgress:I

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mEpoEnable:Z

    return v0
.end method

.method public getUpdatePeriod()J
    .locals 2

    .prologue
    .line 735
    iget-wide v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    return-wide v0
.end method

.method public removeStatusListener(Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->removeListener(Ljava/util/List;Lcom/mediatek/common/epo/IMtkEpoStatusListener;)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[removeStatusListener] len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setProfile] addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 748
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileAddr:Ljava/lang/String;

    .line 749
    iput p2, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePort:I

    .line 750
    iput-object p3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfileUserName:Ljava/lang/String;

    .line 751
    iput-object p4, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mProfilePassword:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRetryTimes] times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 744
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mRetryTimes:I

    .line 745
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTimeout] timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 740
    iput p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mTimeout:I

    .line 741
    return-void
.end method

.method public setUpdatePeriod(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUpdatePeriod] interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 728
    iput-wide p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdatePeriod:J

    .line 730
    iget-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->startTimer()V

    .line 733
    :cond_0
    return-void
.end method

.method public startDownload()I
    .locals 1

    .prologue
    .line 717
    const-string v0, "[startDownload] "

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I

    move-result v0

    return v0
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .line 722
    const-string v0, "[stopDownload]"

    invoke-direct {p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService;->mManualStop:Z

    .line 724
    return-void
.end method
