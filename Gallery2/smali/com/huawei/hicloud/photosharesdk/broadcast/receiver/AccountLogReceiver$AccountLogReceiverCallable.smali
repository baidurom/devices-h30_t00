.class Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver$AccountLogReceiverCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "AccountLogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountLogReceiverCallable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/receiver/AccountLogReceiver$AccountLogReceiverCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 129
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "context"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 131
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->logOffSetting(Landroid/content/Context;)I

    .line 133
    const/4 v2, 0x0

    return-object v2
.end method
