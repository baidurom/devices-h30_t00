.class Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "FriendsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessageCallableInnerForFindbug"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 328
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
    .line 333
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 334
    .local v0, uiSenderFlag:Z
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findbug broadcast uiSenderFlag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFriendSuc(Landroid/content/Context;)V

    .line 345
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 342
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFriendFail(Landroid/content/Context;)V

    goto :goto_0
.end method
