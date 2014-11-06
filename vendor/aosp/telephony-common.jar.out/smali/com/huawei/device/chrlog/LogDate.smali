.class public Lcom/huawei/device/chrlog/LogDate;
.super Ljava/lang/Object;
.source "LogDate.java"


# instance fields
.field private Length:I

.field private calendarNow:Ljava/util/Calendar;

.field private value:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x6

    iput v0, p0, Lcom/huawei/device/chrlog/LogDate;->Length:I

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogDate;->value:Ljava/util/Date;

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    .line 31
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/huawei/device/chrlog/LogDate;->Length:I

    return v0
.end method

.method public getValue()Ljava/util/Date;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogDate;->value:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogDate;->value:Ljava/util/Date;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/huawei/device/chrlog/LogDate;->value:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 22
    return-void
.end method

.method public toByteArray()[B
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 34
    const/4 v1, 0x6

    new-array v0, v1, [B

    .line 35
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    iget-object v1, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 37
    iget-object v1, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 38
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    iget-object v1, p0, Lcom/huawei/device/chrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 41
    return-object v0
.end method
