.class public Lcom/huawei/device/chrlog/CSegCOMHEAD;
.super Lcom/huawei/device/chrlog/ChrLogBaseModel;
.source "CSegCOMHEAD.java"


# instance fields
.field public enDeviceIDType1:Lcom/huawei/device/chrlog/ENCDeviceIDType1;

.field public enDeviceIDType2:Lcom/huawei/device/chrlog/ENCDeviceIDType2;

.field public strIMEIorMEID1:Lcom/huawei/device/chrlog/LogString;

.field public strIMEIorMEID2:Lcom/huawei/device/chrlog/LogString;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    .line 11
    invoke-direct {p0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;-><init>()V

    .line 6
    new-instance v0, Lcom/huawei/device/chrlog/ENCDeviceIDType1;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCDeviceIDType1;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/chrlog/ENCDeviceIDType1;

    .line 7
    new-instance v0, Lcom/huawei/device/chrlog/LogString;

    invoke-direct {v0, v4}, Lcom/huawei/device/chrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/chrlog/LogString;

    .line 8
    new-instance v0, Lcom/huawei/device/chrlog/ENCDeviceIDType2;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCDeviceIDType2;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/chrlog/ENCDeviceIDType2;

    .line 9
    new-instance v0, Lcom/huawei/device/chrlog/LogString;

    invoke-direct {v0, v4}, Lcom/huawei/device/chrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/chrlog/LogString;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/chrlog/ENCDeviceIDType1;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/chrlog/LogString;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/chrlog/ENCDeviceIDType2;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/chrlog/LogString;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method
