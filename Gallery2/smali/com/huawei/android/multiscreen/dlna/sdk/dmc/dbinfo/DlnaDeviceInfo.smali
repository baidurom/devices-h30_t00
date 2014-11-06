.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
.source "DlnaDeviceInfo.java"


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final NAME:Ljava/lang/String; = "_display_name"


# instance fields
.field private deviceId:I

.field private deviceType:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->deviceId:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->deviceType:I

    return v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->getInfo(Landroid/database/Cursor;)V

    .line 91
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->name:Ljava/lang/String;

    .line 95
    const-string v0, "device_type"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->deviceType:I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 71
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->deviceId:I

    .line 72
    return-void
.end method

.method public setDeviceType(I)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 79
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->deviceType:I

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaDeviceInfo;->name:Ljava/lang/String;

    .line 64
    return-void
.end method
