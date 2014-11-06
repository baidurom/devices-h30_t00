.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;
.source "DlnaAudioInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;-><init>()V

    return-void
.end method

.method public static getAudios(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAudios(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 5
    .parameter "cursor"
    .parameter "dlna"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;>;"
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_1
    :goto_1
    return-object v2

    .line 54
    :cond_2
    :try_start_1
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;-><init>()V

    .line 55
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getInfo(Landroid/database/Cursor;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->setDlna(Z)V

    .line 57
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DlnaAudioInfo"

    const-string v4, "getAudios happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 63
    if-eqz p0, :cond_3

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_3
    throw v3
.end method


# virtual methods
.method public getInfo(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getInfo(Landroid/database/Cursor;)V

    .line 35
    return-void
.end method
