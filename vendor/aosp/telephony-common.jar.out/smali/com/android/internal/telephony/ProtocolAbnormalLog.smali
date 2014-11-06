.class public Lcom/android/internal/telephony/ProtocolAbnormalLog;
.super Landroid/os/Handler;
.source "ProtocolAbnormalLog.java"


# static fields
.field private static final EMPTY_FILE_SIZE:I = 0x0

.field private static final EVENT_WRITE_FILE:I = 0x1

.field private static final FILEE_PERMISSION:Ljava/lang/String; = "755"

.field private static final FIRST_EVNET_INDEX:I = 0x0

.field private static final LOGS_DIR:Ljava/lang/String; = "data/data/com.android.phone/protocol_logs"

.field private static final LOG_EVENTS_SIZE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "ABNOR_LOG"

.field private static final MAX_FILE_NUM:I = 0x5

.field private static final MAX_FILE_SIZE:I = 0xa000

.field private static sMe:Lcom/android/internal/telephony/ProtocolAbnormalLog;


# instance fields
.field private mLogFile:Ljava/io/File;

.field private mWriter:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    .line 75
    return-void
.end method

.method private chmodPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "permission"
    .parameter "path"

    .prologue
    .line 319
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0           #command:Ljava/lang/String;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meets excption when chmod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v0, fileName:Ljava/lang/StringBuffer;
    const-string v1, "LOG_CHR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.product.name"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/device/chrlog/AESUtils;->encryptFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createLogFile()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 149
    const-string v4, "data/data/com.android.phone/protocol_logs"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->createFileDir(Ljava/lang/String;)Z

    move-result v2

    .line 150
    .local v2, isSuccess:Z
    if-eqz v2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->createFileName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, fileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/com.android.phone/protocol_logs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    .line 153
    const-string v4, "755"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/com.android.phone/protocol_logs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->chmodPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1           #fileName:Ljava/lang/String;
    :goto_0
    return v3

    .line 157
    .restart local v1       #fileName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "ABNOR_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException: createLogFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fileName:Ljava/lang/String;
    :cond_0
    const-string v3, "ABNOR_LOG"

    const-string v4, "create file dir failure or meet exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)[B
    .locals 5
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFileSize(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 231
    invoke-virtual {p1}, Lcom/huawei/device/chrlog/ChrLogModel;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 233
    iget-object v0, p1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/device/chrlog/ChrLogBaseModel;

    invoke-virtual {v0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 178
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 181
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, time:Ljava/lang/String;
    return-object v1
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 2
    .parameter "file"

    .prologue
    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getFilesList()[Ljava/io/File;
    .locals 3

    .prologue
    .line 137
    new-instance v1, Ljava/io/File;

    const-string v2, "data/data/com.android.phone/protocol_logs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/ProtocolAbnormalLog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog$1;-><init>(Lcom/android/internal/telephony/ProtocolAbnormalLog;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, files:[Ljava/io/File;
    return-object v0
.end method

.method private getFilesNumber([Ljava/io/File;)I
    .locals 1
    .parameter "filesList"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/ProtocolAbnormalLog;
    .locals 4

    .prologue
    .line 78
    const-class v3, Lcom/android/internal/telephony/ProtocolAbnormalLog;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/ProtocolAbnormalLog;->sMe:Lcom/android/internal/telephony/ProtocolAbnormalLog;

    if-nez v2, :cond_0

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ProtacalAbnormalLog"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 81
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 82
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/internal/telephony/ProtocolAbnormalLog;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/internal/telephony/ProtocolAbnormalLog;->sMe:Lcom/android/internal/telephony/ProtocolAbnormalLog;

    .line 84
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/ProtocolAbnormalLog;->sMe:Lcom/android/internal/telephony/ProtocolAbnormalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 78
    .end local v0           #looper:Landroid/os/Looper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getNewestLogFile([Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "filesList"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 122
    :cond_0
    const/4 v2, 0x0

    .line 133
    :cond_1
    return-object v2

    .line 125
    :cond_2
    const/4 v0, 0x0

    .line 126
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, newestFile:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 128
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 130
    move-object v2, v0

    .line 127
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    .line 288
    const/4 v2, 0x0

    .line 290
    .local v2, ret:Z
    if-nez p1, :cond_0

    .line 291
    const-string v3, "ABNOR_LOG"

    const-string v4, "file path is empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x1

    .line 295
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    :cond_1
    const/4 v2, 0x1

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFilesList()[Ljava/io/File;

    move-result-object v1

    .line 301
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v3, v1

    if-nez v3, :cond_4

    .line 302
    :cond_3
    const-string v3, "ABNOR_LOG"

    const-string v4, "files is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, 0x1

    .line 305
    :cond_4
    return v2
.end method

.method private limitLogs()Z
    .locals 7

    .prologue
    .line 187
    const/4 v1, 0x1

    .line 188
    .local v1, isFileCreated:Z
    const/4 v2, 0x1

    .line 190
    .local v2, isFileRemoved:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    const-wide/32 v5, 0xa000

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->createLogFile()Z

    move-result v1

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFilesList()[Ljava/io/File;

    move-result-object v0

    .line 196
    .local v0, filesList:[Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFilesNumber([Ljava/io/File;)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 198
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->removeOldestFile([Ljava/io/File;)Z

    move-result v2

    .line 201
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private openLogFileToWriter()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    const-string v3, "data/data/com.android.phone/protocol_logs"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v2, "ABNOR_LOG"

    const-string v3, "the logs dir is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return v1

    .line 110
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data/data/com.android.phone/protocol_logs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFilesList()[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getNewestLogFile([Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    .line 112
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mLogFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 117
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: openLogFileToWriter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeOldestFile([Ljava/io/File;)Z
    .locals 6
    .parameter "filesList"

    .prologue
    const/4 v4, 0x0

    .line 205
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 209
    :cond_1
    const/4 v0, 0x0

    .line 210
    .local v0, fileName:Ljava/lang/String;
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, oldestFile:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 212
    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 214
    move-object v3, v0

    .line 211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_3
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_0

    .line 218
    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_0

    .line 217
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public createFileDir(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileDir"

    .prologue
    const/4 v1, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    const-string v2, "ABNOR_LOG"

    const-string v3, "The file path should not be null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return v1

    .line 276
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, currFileDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    const-string v2, "ABNOR_LOG"

    const-string v3, "Unable to create file directory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, "755"

    const-string v2, "data/data/com.android.phone/protocol_logs"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->chmodPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 89
    const-string v0, "ABNOR_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The event is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->writeInfoIntoLogFile(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public writeAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)V
    .locals 2
    .parameter "logInfo"

    .prologue
    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public declared-synchronized writeInfoIntoLogFile(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->openLogFileToWriter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->createLogFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->limitLogs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProtocolAbnormalLog;->getAbnormalInfo(Lcom/huawei/device/chrlog/ChrLogModel;)[B

    move-result-object v1

    .line 248
    .local v1, info:[B
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .end local v1           #info:[B
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 262
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 268
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 251
    .restart local v1       #info:[B
    :cond_2
    :try_start_4
    const-string v2, "ABNOR_LOG"

    const-string v3, "could not write abnormal info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 260
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    .line 262
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: writeInfoIntoLogFile when close mWriter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #info:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 255
    :cond_3
    :try_start_8
    const-string v2, "ABNOR_LOG"

    const-string v3, "limit logs failure,so stop write log"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_9
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: writeInfoIntoLogFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 260
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_1

    .line 262
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 263
    :catch_2
    move-exception v0

    .line 264
    :try_start_c
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: writeInfoIntoLogFile when close mWriter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_4

    .line 262
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog;->mWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 260
    :cond_4
    :goto_2
    :try_start_e
    throw v2

    .line 263
    :catch_3
    move-exception v0

    .line 264
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "ABNOR_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: writeInfoIntoLogFile when close mWriter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 263
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 264
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ABNOR_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: writeInfoIntoLogFile when close mWriter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1
.end method
