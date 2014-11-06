.class public Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;
.super Lcom/huawei/device/chrlog/ChrLogBaseModel;
.source "CSegEVENT_SIM_PERFORMANCE_EVENT.java"


# instance fields
.field public enApduIns:Lcom/huawei/device/chrlog/ENCApduIns;

.field public enEventId:Lcom/huawei/device/chrlog/ENCEventId;

.field public enSIMCardType:Lcom/huawei/device/chrlog/ENCSIMCardType;

.field public enSIMLostCause:Lcom/huawei/device/chrlog/ENCSIMLostCause;

.field public tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

.field public ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

.field public ucLen:Lcom/huawei/device/chrlog/LogByte;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 14
    invoke-direct {p0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;-><init>()V

    .line 6
    new-instance v0, Lcom/huawei/device/chrlog/ENCEventId;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCEventId;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    .line 7
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    .line 8
    new-instance v0, Lcom/huawei/device/chrlog/LogDate;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogDate;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    .line 9
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    .line 10
    new-instance v0, Lcom/huawei/device/chrlog/ENCSIMLostCause;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCSIMLostCause;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMLostCause:Lcom/huawei/device/chrlog/ENCSIMLostCause;

    .line 11
    new-instance v0, Lcom/huawei/device/chrlog/ENCSIMCardType;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCSIMCardType;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMCardType:Lcom/huawei/device/chrlog/ENCSIMCardType;

    .line 12
    new-instance v0, Lcom/huawei/device/chrlog/ENCApduIns;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCApduIns;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enApduIns:Lcom/huawei/device/chrlog/ENCApduIns;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMLostCause:Lcom/huawei/device/chrlog/ENCSIMLostCause;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enSIMCardType:Lcom/huawei/device/chrlog/ENCSIMCardType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enApduIns:Lcom/huawei/device/chrlog/ENCApduIns;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->enEventId:Lcom/huawei/device/chrlog/ENCEventId;

    const-string v1, "SIM_PERFORMANCE_EVENT"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCEventId;->setValue(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->ucLen:Lcom/huawei/device/chrlog/LogByte;

    invoke-virtual {p0}, Lcom/huawei/device/chrlog/CSegEVENT_SIM_PERFORMANCE_EVENT;->getTotalLen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 25
    return-void
.end method
