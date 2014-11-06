.class public Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;
.super Lcom/huawei/device/chrlog/ChrLogBaseModel;
.source "CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT.java"


# instance fields
.field public enCSLostCause:Lcom/huawei/device/chrlog/ENCCSLostCause;

.field public enDropCallType:Lcom/huawei/device/chrlog/ENCDropCallType;

.field public enEventId:Lcom/huawei/device/chrlog/ENCEventId;

.field public enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

.field public iBaseLat:Lcom/huawei/device/chrlog/LogInt;

.field public iBaseLong:Lcom/huawei/device/chrlog/LogInt;

.field public iCellID:Lcom/huawei/device/chrlog/LogInt;

.field public iECI:Lcom/huawei/device/chrlog/LogInt;

.field public iLAC:Lcom/huawei/device/chrlog/LogInt;

.field public iRAC:Lcom/huawei/device/chrlog/LogInt;

.field public tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

.field public ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

.field public ucLen:Lcom/huawei/device/chrlog/LogByte;

.field public ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

.field public ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

.field public ucucTxPower:Lcom/huawei/device/chrlog/LogByte;

.field public usBaseID:Lcom/huawei/device/chrlog/LogShort;

.field public usFreqInfo:Lcom/huawei/device/chrlog/LogShort;

.field public usMCC:Lcom/huawei/device/chrlog/LogShort;

.field public usMNC:Lcom/huawei/device/chrlog/LogShort;

.field public usNID:Lcom/huawei/device/chrlog/LogShort;

.field public usSID:Lcom/huawei/device/chrlog/LogShort;

.field public usTAC:Lcom/huawei/device/chrlog/LogShort;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    invoke-direct {p0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;-><init>()V

    .line 6
    new-instance v0, Lcom/huawei/device/chrlog/ENCEventId;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCEventId;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    .line 7
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    .line 8
    new-instance v0, Lcom/huawei/device/chrlog/LogDate;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogDate;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    .line 9
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    .line 10
    new-instance v0, Lcom/huawei/device/chrlog/ENCNetworkRAT;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCNetworkRAT;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    .line 11
    new-instance v0, Lcom/huawei/device/chrlog/ENCDropCallType;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCDropCallType;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enDropCallType:Lcom/huawei/device/chrlog/ENCDropCallType;

    .line 12
    new-instance v0, Lcom/huawei/device/chrlog/ENCCSLostCause;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCCSLostCause;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enCSLostCause:Lcom/huawei/device/chrlog/ENCCSLostCause;

    .line 13
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    .line 14
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    .line 15
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucucTxPower:Lcom/huawei/device/chrlog/LogByte;

    .line 16
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    .line 17
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    .line 18
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usFreqInfo:Lcom/huawei/device/chrlog/LogShort;

    .line 19
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    .line 20
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    .line 21
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    .line 22
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usBaseID:Lcom/huawei/device/chrlog/LogShort;

    .line 23
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iBaseLat:Lcom/huawei/device/chrlog/LogInt;

    .line 24
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iBaseLong:Lcom/huawei/device/chrlog/LogInt;

    .line 25
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usSID:Lcom/huawei/device/chrlog/LogShort;

    .line 26
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usNID:Lcom/huawei/device/chrlog/LogShort;

    .line 27
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    .line 28
    new-instance v0, Lcom/huawei/device/chrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    .line 31
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enDropCallType:Lcom/huawei/device/chrlog/ENCDropCallType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enCSLostCause:Lcom/huawei/device/chrlog/ENCCSLostCause;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucucTxPower:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usFreqInfo:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usBaseID:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iBaseLat:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iBaseLong:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usSID:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usNID:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    const-string v1, "CIRCUIT_SERVICE_PERFORMANCE_EVENT"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCEventId;->setValue(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    invoke-virtual {p0}, Lcom/huawei/device/chrlog/CSegEVENT_CIRCUIT_SERVICE_PERFORMANCE_EVENT;->getTotalLen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 57
    return-void
.end method
