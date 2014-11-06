.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$1;
.super Ljava/lang/Object;
.source "SyncFolderCallable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)I
    .locals 6
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v0

    .line 90
    .local v0, time1:J
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v2

    .line 91
    .local v2, time2:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 101
    :goto_0
    return v4

    .line 95
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 97
    const/4 v4, -0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    check-cast p2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$1;->compare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)I

    move-result v0

    return v0
.end method
