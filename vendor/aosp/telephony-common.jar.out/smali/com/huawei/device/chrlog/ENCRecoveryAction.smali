.class public Lcom/huawei/device/chrlog/ENCRecoveryAction;
.super Lcom/huawei/device/chrlog/Cenum;
.source "ENCRecoveryAction.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/huawei/device/chrlog/Cenum;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCRecoveryAction;->map:Ljava/util/Map;

    const-string v1, "GET_DATA_CALL_LIST"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCRecoveryAction;->map:Ljava/util/Map;

    const-string v1, "CLEANUP"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCRecoveryAction;->map:Ljava/util/Map;

    const-string v1, "REREGISTER"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCRecoveryAction;->map:Ljava/util/Map;

    const-string v1, "RADIO_RESTART"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCRecoveryAction;->map:Ljava/util/Map;

    const-string v1, "RADIO_RESTART_WITH_PROP"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lcom/huawei/device/chrlog/ENCRecoveryAction;->setLength(I)V

    .line 13
    return-void
.end method
