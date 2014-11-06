.class public Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;
.super Lcom/huawei/android/freeshare/client/transfer/FileTransfer;
.source "BluetoothFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;,
        Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;,
        Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Freeshare_BluetoothFileTransfer"


# instance fields
.field private mInsertLock:Ljava/lang/Object;

.field private mInsertShareThreadNum:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPendingUpdate:Z

.field private mRegisteDataBaseObserver:Z

.field private mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

.field private mUriNeedObsever:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/TransferItem;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;

    invoke-direct {v0, p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mObserver:Landroid/database/ContentObserver;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Landroid/net/Uri;Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->updateTransferItem(Landroid/net/Uri;Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$3(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I

    return-void
.end method

.method static synthetic access$4(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/transfer/Mission;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->insertShare(Lcom/huawei/android/freeshare/client/transfer/Mission;)V

    return-void
.end method

.method static synthetic access$5(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    return-object v0
.end method

.method static synthetic access$6(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$7(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    return-void
.end method

.method static synthetic access$9(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z

    return-void
.end method

.method private insertShare(Lcom/huawei/android/freeshare/client/transfer/Mission;)V
    .locals 14
    .parameter "mission"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/Mission;->getTargetDevice()Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    move-result-object v3

    .line 163
    .local v3, device:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 164
    .local v8, ts:Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/Mission;->getTransferItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 165
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/freeshare/client/transfer/TransferItem;>;"
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 167
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 199
    return-void

    .line 167
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    .line 168
    .local v6, item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    iget-object v5, v6, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    .line 169
    .local v5, fileUri:Ljava/lang/String;
    iget-object v11, v6, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v11, "Freeshare_BluetoothFileTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Got mimetype: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  Got uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 172
    iget-object v1, v6, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mMimetype:Ljava/lang/String;

    .line 175
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v9, values:Landroid/content/ContentValues;
    const-string v11, "uri"

    invoke-virtual {v9, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v11, "mimetype"

    invoke-virtual {v9, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v11, "destination"

    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v11, "direction"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v11, "timestamp"

    invoke-virtual {v9, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v11, "NeedSaveSendingFileInfo"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    const/4 v2, 0x0

    .line 186
    .local v2, contentUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 187
    sget-object v12, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    .line 186
    invoke-virtual {v11, v12, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    :goto_1
    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v11, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v11, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const-string v11, "Freeshare_BluetoothFileTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Insert contentUri: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  to device: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 197
    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 196
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v4

    .line 189
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "Freeshare_BluetoothFileTransfer"

    const-string v12, "insert database failed!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10
.end method

.method private registBluetoothProviderObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mRegisteDataBaseObserver:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mObserver:Landroid/database/ContentObserver;

    .line 104
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    iput-boolean v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mRegisteDataBaseObserver:Z

    goto :goto_0
.end method

.method private unRegistBluetoothProviderObserver()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mRegisteDataBaseObserver:Z

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mRegisteDataBaseObserver:Z

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    .line 203
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z

    .line 204
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    invoke-direct {v0, p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    .line 206
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->start()V

    .line 202
    :cond_0
    monitor-exit p0

    .line 209
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTransferItem(Landroid/net/Uri;Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V
    .locals 13
    .parameter "uri"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 252
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 253
    :cond_0
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit p0

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    const-string v5, "_id"

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    .local v8, cursor:Landroid/database/Cursor;
    const/16 v6, 0x1eb

    .line 266
    .local v6, bluetoothShareState:I
    const/4 v11, 0x0

    .line 267
    .local v11, totalBytes:I
    const/4 v7, 0x0

    .line 268
    .local v7, currentBytes:I
    const/4 v10, 0x0

    .line 269
    .local v10, success:Z
    if-eqz v8, :cond_4

    .line 270
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const-string v0, "status"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 274
    const-string v0, "total_bytes"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 273
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 276
    const-string v0, "current_bytes"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 277
    invoke-static {v6}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothShare;->isStatusSuccess(I)Z

    move-result v10

    .line 279
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_4
    iput v7, p2, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mCurrentBytes:I

    .line 283
    iput v11, p2, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mTotalBytes:I

    .line 284
    iput-boolean v10, p2, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mSuccess:Z

    .line 286
    const/4 v12, 0x3

    .line 288
    .local v12, transferState:I
    const/16 v0, 0xc0

    if-ne v0, v6, :cond_7

    .line 290
    const/4 v12, 0x4

    .line 295
    :cond_5
    :goto_1
    iput v12, p2, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    .line 299
    const/4 v9, 0x1

    .line 300
    .local v9, shouldNotifyObserver:Z
    invoke-virtual {p2}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v9, 0x1

    .line 301
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    .line 307
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;

    invoke-interface {v0, p2}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;->notifyChanged(Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V

    goto :goto_0

    .line 291
    .end local v9           #shouldNotifyObserver:Z
    :cond_7
    invoke-static {v6}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    const/4 v12, 0x5

    goto :goto_1

    .line 302
    .restart local v9       #shouldNotifyObserver:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 301
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public cancleTransferringMission()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 312
    const-string v7, "Freeshare_BluetoothFileTransfer"

    const-string v8, "cancleTransferringMission"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v3, temp:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<Lcom/huawei/android/freeshare/client/transfer/TransferItem;Landroid/net/Uri;>;>;"
    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v7, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    const-string v6, "Freeshare_BluetoothFileTransfer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mUriNeedObsever size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 336
    return v5

    .line 314
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 317
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/huawei/android/freeshare/client/transfer/TransferItem;Landroid/net/Uri;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 319
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    .line 320
    .local v1, item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    const/4 v2, 0x0

    .line 321
    .local v2, shouldNotifyObserver:Z
    monitor-enter p0

    .line 322
    :try_start_3
    iget-object v8, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    move v2, v5

    .line 321
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    iput-boolean v6, v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mSuccess:Z

    .line 327
    const/4 v8, 0x5

    iput v8, v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    .line 328
    iget-object v8, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;

    if-eqz v8, :cond_0

    .line 329
    iget-object v8, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;

    invoke-interface {v8, v1}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;->notifyChanged(Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V

    goto :goto_0

    :cond_2
    move v2, v6

    .line 322
    goto :goto_1

    .line 321
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 333
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/huawei/android/freeshare/client/transfer/TransferItem;Landroid/net/Uri;>;"
    .end local v1           #item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    .end local v2           #shouldNotifyObserver:Z
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->destroy()Z

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->unRegistBluetoothProviderObserver()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->registBluetoothProviderObserver()V

    .line 54
    invoke-super {p0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->init()Z

    move-result v0

    return v0
.end method

.method public isTransferring()Z
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, isTransferring:Z
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 345
    :goto_0
    monitor-exit p0

    .line 348
    return v0

    .line 346
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
    .locals 4
    .parameter "mission"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertLock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    .line 77
    const-string v1, "Freeshare_BluetoothFileTransfer"

    const-string v3, "Too many shares user triggered concurrently!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v2

    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    .line 89
    :cond_0
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/transfer/Mission;)V

    .line 75
    .local v0, insertThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->start()V

    .line 92
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #insertThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
