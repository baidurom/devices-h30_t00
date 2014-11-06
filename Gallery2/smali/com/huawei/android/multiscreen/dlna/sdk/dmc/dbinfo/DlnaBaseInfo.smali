.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
.super Ljava/lang/Object;
.source "DlnaBaseInfo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected deviceId:I

.field protected dlna:Z

.field protected id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DLNAInfo#getStringColumn#Exception"

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    return v0
.end method

.method protected getDoubleColumn(Ljava/lang/String;Landroid/database/Cursor;)D
    .locals 8
    .parameter "colName"
    .parameter "cursor"

    .prologue
    .line 146
    const-wide/high16 v2, -0x10

    .line 147
    .local v2, value:D
    if-nez p2, :cond_0

    move-wide v4, v2

    .line 160
    .end local v2           #value:D
    .local v4, value:D
    :goto_0
    return-wide v4

    .line 151
    .end local v4           #value:D
    .restart local v2       #value:D
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 154
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v1           #idx:I
    :cond_1
    :goto_1
    move-wide v4, v2

    .line 160
    .end local v2           #value:D
    .restart local v4       #value:D
    goto :goto_0

    .line 157
    .end local v4           #value:D
    .restart local v2       #value:D
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->TAG:Ljava/lang/String;

    const-string v7, "getDoubleColumn happened Exception"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->id:I

    return v0
.end method

.method protected getInfo(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 164
    const-string v0, "_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->id:I

    .line 165
    const-string v0, "device_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    .line 166
    return-void
.end method

.method protected getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 5
    .parameter "colName"
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v2, -0x1

    .line 94
    .local v2, value:I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, idx:I
    if-ltz v1, :cond_0

    .line 99
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 106
    .end local v1           #idx:I
    :cond_0
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->TAG:Ljava/lang/String;

    const-string v4, "getIntColumn happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "colName"
    .parameter "cursor"

    .prologue
    .line 119
    const-string v2, ""

    .line 120
    .local v2, value:Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v3, v2

    .line 133
    .end local v2           #value:Ljava/lang/String;
    .local v3, value:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 124
    .end local v3           #value:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 127
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #idx:I
    :cond_1
    :goto_1
    move-object v3, v2

    .line 133
    .end local v2           #value:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v3           #value:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->TAG:Ljava/lang/String;

    const-string v5, "getStringColumn hapened Exception"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final isDlna()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->dlna:Z

    return v0
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 61
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    .line 62
    return-void
.end method

.method public final setDlna(Z)V
    .locals 0
    .parameter "dlna"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->dlna:Z

    .line 81
    return-void
.end method

.method public final setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->id:I

    .line 54
    return-void
.end method
