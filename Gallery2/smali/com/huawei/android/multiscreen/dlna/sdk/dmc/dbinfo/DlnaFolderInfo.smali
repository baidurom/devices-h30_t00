.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
.source "DlnaFolderInfo.java"


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final OPERATE_TYPE:Ljava/lang/String; = "operateType"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"


# instance fields
.field private data:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private lastmodifiedtime:Ljava/lang/String;

.field private mount_path:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operateType:I

.field private parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->mount_path:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getFolders(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;>;"
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_0
    :goto_1
    return-object v2

    .line 190
    :cond_1
    :try_start_1
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;-><init>()V

    .line 191
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getInfo(Landroid/database/Cursor;)V

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->setDlna(Z)V

    .line 194
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DlnaFolderInfo"

    const-string v4, "getFolders happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 201
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 202
    throw v3
.end method

.method public static getParentFolderId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, parentId:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 146
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    const-string v3, "parent_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, idx:I
    if-ltz v1, :cond_0

    .line 149
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 158
    .end local v1           #idx:I
    :cond_1
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DlnaFolderInfo"

    const-string v4, "getParentFolderId happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 154
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 155
    throw v3
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->getInfo(Landroid/database/Cursor;)V

    .line 166
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->name:Ljava/lang/String;

    .line 170
    const-string v0, "parent_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->parentId:Ljava/lang/String;

    .line 171
    const-string v0, "folder_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->folderId:Ljava/lang/String;

    .line 172
    const-string v0, "operateType"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->operateType:I

    goto :goto_0
.end method

.method public getLastmodifiedtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->lastmodifiedtime:Ljava/lang/String;

    return-object v0
.end method

.method public getMount_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->mount_path:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->operateType:I

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->data:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 133
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    .line 134
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->folderId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setLastmodifiedtime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastmodifiedtime"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->lastmodifiedtime:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setMount_path(Ljava/lang/String;)V
    .locals 0
    .parameter "mount_path"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->mount_path:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setOperateType(I)V
    .locals 0
    .parameter "operateType"

    .prologue
    .line 89
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->operateType:I

    .line 90
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentId"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->parentId:Ljava/lang/String;

    .line 122
    return-void
.end method
