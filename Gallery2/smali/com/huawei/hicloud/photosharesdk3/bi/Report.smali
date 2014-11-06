.class public final Lcom/huawei/hicloud/photosharesdk3/bi/Report;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "Report.java"


# static fields
.field public static final DOWNLOAD_KEY:Ljava/lang/String; = "DOWNLOAD"

.field public static final KEY_NO_VALUE:Ljava/lang/String; = "1"

.field public static final KEY_YES_VALUE:Ljava/lang/String; = "0"

.field public static final MAX_RECORD_EXPIRE_TIMEOUT:J = 0x168L

.field public static final OPENPHOTO_KEY:Ljava/lang/String; = "OPENPHOTO"

.field public static final OPENSHARE_KEY:Ljava/lang/String; = "OPENSHARE"

.field public static final THREEGDL_KEY:Ljava/lang/String; = "3GDL"

.field public static final UPLOAD_KEY:Ljava/lang/String; = "UPLOAD"

.field public static final UPLOAD_PHOTO:Ljava/lang/String; = "UPLOAD_PHOTO"

.field public static final UPLOAD_SHAREPHOTO:Ljava/lang/String; = "UPLOAD_SHAREPHOTO"

.field private static instance:Lcom/huawei/hicloud/photosharesdk3/bi/Report;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->instance:Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 86
    return-void
.end method

.method private canReport(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v0

    .line 114
    .local v0, flag:Z
    return v0
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->instance:Lcom/huawei/hicloud/photosharesdk3/bi/Report;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->instance:Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->createInstance()V

    .line 103
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->instance:Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    return-object v0
.end method


# virtual methods
.method public addSwitchData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 125
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.huawei.hicloud.intent.action.PHOTOSTREAM_SWITCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    const-string v8, "isPhotoStreamOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 135
    .local v2, isOpenPhoto:Z
    if-eqz v2, :cond_2

    const-string v4, "0"

    .line 136
    .local v4, key:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Report addSwitchData OPENPHOTO="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "1"

    goto :goto_1

    .line 139
    .end local v2           #isOpenPhoto:Z
    :cond_3
    const-string v8, "com.huawei.hicloud.intent.action.PHOTOSHARE_SWITCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 141
    const-string v8, "isSharePhotoOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 142
    .local v3, isOpenShare:Z
    if-eqz v3, :cond_4

    const-string v4, "0"

    .line 143
    .restart local v4       #key:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Report addSwitchData OPENSHARE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v4           #key:Ljava/lang/String;
    :cond_4
    const-string v4, "1"

    goto :goto_2

    .line 146
    .end local v3           #isOpenShare:Z
    :cond_5
    const-string v8, "com.huawei.hicloud.intent.action.3GALLOW_SWITCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 148
    const-string v8, "is3GAllowOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, is3Gdl:Z
    if-eqz v1, :cond_6

    const-string v4, "0"

    .line 150
    .restart local v4       #key:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Report addSwitchData 3GDL="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v4           #key:Ljava/lang/String;
    :cond_6
    const-string v4, "1"

    goto :goto_3

    .line 153
    .end local v1           #is3Gdl:Z
    :cond_7
    const-string v8, "com.huawei.hicloud.intent.action.PHOTOSTREAM_SWITCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    const-string v8, "isPhotoStreamOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 156
    .restart local v2       #isOpenPhoto:Z
    const-string v8, "isSharePhotoOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 157
    .restart local v3       #isOpenShare:Z
    const-string v8, "is3GAllowOn"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .restart local v1       #is3Gdl:Z
    if-eqz v2, :cond_8

    const-string v6, "0"

    .line 159
    .local v6, keyPhoto:Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_9

    const-string v7, "0"

    .line 160
    .local v7, keyShare:Ljava/lang/String;
    :goto_5
    if-eqz v1, :cond_a

    const-string v5, "0"

    .line 161
    .local v5, key3g:Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Report addSwitchData OPENPHOTO="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 162
    const-string v11, "OPENSHARE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "3GDL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v5           #key3g:Ljava/lang/String;
    .end local v6           #keyPhoto:Ljava/lang/String;
    .end local v7           #keyShare:Ljava/lang/String;
    :cond_8
    const-string v6, "1"

    goto :goto_4

    .line 159
    .restart local v6       #keyPhoto:Ljava/lang/String;
    :cond_9
    const-string v7, "1"

    goto :goto_5

    .line 160
    .restart local v7       #keyShare:Ljava/lang/String;
    :cond_a
    const-string v5, "1"

    goto :goto_6
.end method

.method public addSyncDownloadData(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "downNum"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report addSyncDownloadData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSyncPhotoData(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "num"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report addSyncPhotoData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSyncSharePhotoData(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "num"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report addSyncSharePhotoData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSyncUploadData(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "uploadNum"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report addSyncUploadData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendReportData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->canReport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "Report sendReportData "

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
