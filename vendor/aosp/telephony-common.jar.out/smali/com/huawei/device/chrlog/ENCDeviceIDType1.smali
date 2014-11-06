.class public Lcom/huawei/device/chrlog/ENCDeviceIDType1;
.super Lcom/huawei/device/chrlog/Cenum;
.source "ENCDeviceIDType1.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/huawei/device/chrlog/Cenum;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCDeviceIDType1;->map:Ljava/util/Map;

    const-string v1, "IMEI"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/huawei/device/chrlog/ENCDeviceIDType1;->map:Ljava/util/Map;

    const-string v1, "MEID"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Lcom/huawei/device/chrlog/ENCDeviceIDType1;->setLength(I)V

    .line 10
    return-void
.end method
