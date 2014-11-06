.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$OriginalFileDownHandle;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
.source "SyncFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginalFileDownHandle"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;-><init>(Ljava/lang/Object;)V

    .line 869
    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Object;)V
    .locals 3
    .parameter "callResult"

    .prologue
    .line 874
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "callback"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method
