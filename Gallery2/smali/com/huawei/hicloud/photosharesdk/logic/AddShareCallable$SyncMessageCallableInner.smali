.class Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable$SyncMessageCallableInner;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "PhotoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessageCallableInner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 991
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 997
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable$SyncMessageCallableInner;->getCallParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 997
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method
