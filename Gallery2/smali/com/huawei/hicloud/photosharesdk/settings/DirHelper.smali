.class public Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;
.super Ljava/lang/Object;
.source "DirHelper.java"


# static fields
.field private static volatile dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDirInfo(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil;->clearDirInfoInFile(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->destory()V

    .line 73
    return-void
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    .line 63
    :cond_0
    return-void
.end method

.method public static getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const-class v1, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil;->readDirInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static updateDirInfo(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)V
    .locals 0
    .parameter "context"
    .parameter "dirInfo"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil;->writeDirInfoToFile(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)V

    .line 51
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->destory()V

    .line 52
    return-void
.end method
