.class public Lcom/huawei/hicloud/photosharesdk/helper/DateManager;
.super Ljava/lang/Object;
.source "DateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateManager"

.field private static manager:Lcom/huawei/hicloud/photosharesdk/helper/DateManager;


# instance fields
.field dbankFormat:Ljava/text/SimpleDateFormat;

.field sdf:Ljava/text/SimpleDateFormat;

.field sdfGMT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->manager:Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdfGMT:Ljava/text/SimpleDateFormat;

    .line 55
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdf:Ljava/text/SimpleDateFormat;

    .line 59
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->dbankFormat:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdfGMT:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdf:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->dbankFormat:Ljava/text/SimpleDateFormat;

    .line 29
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdfGMT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 30
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 31
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->dbankFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 32
    return-void
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->manager:Lcom/huawei/hicloud/photosharesdk/helper/DateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk/helper/DateManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->manager:Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->createInstance()V

    .line 45
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->manager:Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized LT2UTC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->formatTimeAsGMT(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized formatTimeAsDefault(Ljava/lang/String;)J
    .locals 8
    .parameter "time"

    .prologue
    .line 99
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 102
    .local v2, temp:J
    :try_start_0
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    .local v0, date:Ljava/util/Date;
    if-nez v0, :cond_0

    move-wide v4, v2

    .line 115
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #temp:J
    .local v4, temp:J
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 107
    .end local v4           #temp:J
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #temp:J
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .end local v0           #date:Ljava/util/Date;
    :goto_1
    move-wide v4, v2

    .line 115
    .end local v2           #temp:J
    .restart local v4       #temp:J
    goto :goto_0

    .line 109
    .end local v4           #temp:J
    .restart local v2       #temp:J
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/text/ParseException;
    :try_start_2
    const-string v6, "DateManager"

    const-string v7, "formatTimeAsDefault"

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 99
    .end local v1           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized formatTimeAsGMT(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->sdfGMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    .local v0, date:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 63
    .end local v0           #date:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDbankTs(Ljava/lang/String;)J
    .locals 8
    .parameter "time"

    .prologue
    .line 178
    monitor-enter p0

    const-wide/16 v1, 0x0

    .line 181
    .local v1, dbankTs:J
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->dbankFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 182
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDbankTs date:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 194
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 188
    :catch_0
    move-exception v3

    .line 191
    .local v3, e:Ljava/text/ParseException;
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getDbankTs"

    invoke-static {v4, v5, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v3           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
