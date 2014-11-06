.class public Lcom/huawei/hicloud/photosharesdk/api/DirSetting;
.super Ljava/lang/Object;
.source "DirSetting.java"


# static fields
.field private static final FAILED_CODE:I = 0x1

.field private static final SUCCESS_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DirSetting"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setDir(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)I
    .locals 6
    .parameter "context"
    .parameter "dirInfo"

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, ret:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 55
    const-string v4, "DirSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "setDir :"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 58
    :cond_1
    const/4 v2, 0x1

    .line 80
    :goto_1
    return v2

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, baseDir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v1

    .line 62
    .local v1, isDirExists:Z
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_4

    .line 63
    const-string v3, "DirSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1..setDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4
    if-nez v1, :cond_5

    .line 67
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 70
    :cond_5
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_6

    .line 71
    const-string v3, "DirSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "2..setDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_6
    if-eqz v1, :cond_7

    .line 74
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->updateDirInfo(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)V

    goto :goto_1

    .line 76
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setIsLogOpen(Z)V
    .locals 0
    .parameter "isOpen"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->setLogOper(Z)V

    .line 99
    return-void
.end method
