.class public Lcom/huawei/device/chrlog/ENCSIMLostCause;
.super Lcom/huawei/device/chrlog/Cenum;
.source "ENCSIMLostCause.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/huawei/device/chrlog/Cenum;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    const-string v1, "CHECKERROR"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    const-string v1, "OVERRUN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    const-string v1, "UNKNOW"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Lcom/huawei/device/chrlog/ENCSIMLostCause;->setLength(I)V

    .line 12
    return-void
.end method