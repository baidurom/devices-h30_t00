.class public Lcom/huawei/device/chrlog/CSegFILEHEAD;
.super Lcom/huawei/device/chrlog/ChrLogBaseModel;
.source "CSegFILEHEAD.java"


# instance fields
.field public enChipsetType:Lcom/huawei/device/chrlog/ENCChipsetType;

.field public strProductName:Lcom/huawei/device/chrlog/LogString;

.field public strSoftwareVersion:Lcom/huawei/device/chrlog/LogString;

.field public strnoExplain:Lcom/huawei/device/chrlog/LogString;

.field public ucDay:Lcom/huawei/device/chrlog/LogByte;

.field public ucHour:Lcom/huawei/device/chrlog/LogByte;

.field private ucLogVersion:Lcom/huawei/device/chrlog/LogByte;

.field public ucMinute:Lcom/huawei/device/chrlog/LogByte;

.field public ucMonth:Lcom/huawei/device/chrlog/LogByte;

.field public ucReportType:Lcom/huawei/device/chrlog/LogByte;

.field public ucSecond:Lcom/huawei/device/chrlog/LogByte;

.field public usChecksum:Lcom/huawei/device/chrlog/LogShort;

.field public usTimeZone:Lcom/huawei/device/chrlog/LogShort;

.field public usYear:Lcom/huawei/device/chrlog/LogShort;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0x1e

    const/16 v2, 0x14

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23
    invoke-direct {p0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;-><init>()V

    .line 7
    new-instance v0, Lcom/huawei/device/chrlog/LogString;

    invoke-direct {v0, v2}, Lcom/huawei/device/chrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/chrlog/LogString;

    .line 9
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/chrlog/LogByte;

    .line 10
    new-instance v0, Lcom/huawei/device/chrlog/LogString;

    invoke-direct {v0, v5}, Lcom/huawei/device/chrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/chrlog/LogString;

    .line 11
    new-instance v0, Lcom/huawei/device/chrlog/ENCChipsetType;

    invoke-direct {v0, v3}, Lcom/huawei/device/chrlog/ENCChipsetType;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/chrlog/ENCChipsetType;

    .line 12
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/chrlog/LogShort;

    .line 13
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/chrlog/LogByte;

    .line 14
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/chrlog/LogByte;

    .line 15
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/chrlog/LogByte;

    .line 16
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/chrlog/LogByte;

    .line 17
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/chrlog/LogByte;

    .line 18
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/chrlog/LogShort;

    .line 19
    new-instance v0, Lcom/huawei/device/chrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usChecksum:Lcom/huawei/device/chrlog/LogShort;

    .line 20
    new-instance v0, Lcom/huawei/device/chrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucReportType:Lcom/huawei/device/chrlog/LogByte;

    .line 21
    new-instance v0, Lcom/huawei/device/chrlog/LogString;

    invoke-direct {v0, v6}, Lcom/huawei/device/chrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strnoExplain:Lcom/huawei/device/chrlog/LogString;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/chrlog/LogString;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/chrlog/LogString;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/chrlog/ENCChipsetType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->usChecksum:Lcom/huawei/device/chrlog/LogShort;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucReportType:Lcom/huawei/device/chrlog/LogByte;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strnoExplain:Lcom/huawei/device/chrlog/LogString;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/chrlog/LogString;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/huawei/device/chrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/chrlog/LogByte;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 42
    return-void
.end method
