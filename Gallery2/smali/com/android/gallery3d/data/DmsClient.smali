.class public Lcom/android/gallery3d/data/DmsClient;
.super Ljava/lang/Object;
.source "DmsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DmsClient$Listener;
    }
.end annotation


# static fields
.field private static final QUERY_NUMBER:I = 0xf

.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation
.end field

.field mDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/DmsClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mDevices:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/android/gallery3d/data/DmsClient$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DmsClient$1;-><init>(Lcom/android/gallery3d/data/DmsClient;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsClient;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsClient;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/DmsClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/DmsClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/data/DmsClient;->updateDmsList()V

    return-void
.end method

.method private updateDmsList()V
    .locals 5

    .prologue
    .line 269
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 275
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmsDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/DmsClient$Listener;

    .line 278
    .local v1, l:Lcom/android/gallery3d/data/DmsClient$Listener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/DmsClient$Listener;->dirtyChanged()V

    goto :goto_1

    .line 280
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/gallery3d/data/DmsClient$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/data/DmsClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevice(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    .locals 4
    .parameter "id"

    .prologue
    .line 156
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    .line 158
    .local v0, d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 159
    monitor-exit v3

    .line 162
    .end local v0           #d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 163
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDevice(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    .locals 4
    .parameter "deviceName"

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v3

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    .line 134
    .local v0, d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    monitor-exit v3

    .line 138
    .end local v0           #d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 139
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDeviceByUDN(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    .locals 2
    .parameter "deviceUDN"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v4

    .line 174
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;>;"
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 178
    monitor-exit v4

    .line 189
    :goto_0
    return-object v2

    .line 181
    :cond_0
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmsDeviceList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    .line 184
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    .line 185
    .local v0, d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;

    move-result-object v3

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const/16 v6, 0xf

    invoke-interface {v3, v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->getMediaTotalCount(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 186
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v0           #d:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 189
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getObjectInfo(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 6
    .parameter "deviceID"
    .parameter "objectHandle"

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsClient;->getDevice(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    .line 232
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    if-nez v0, :cond_0

    move-object v2, v4

    .line 247
    :goto_0
    return-object v2

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsClient;->getStorageList(I)Ljava/util/List;

    move-result-object v3

    .line 238
    .local v3, singleMediaList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v4

    .line 239
    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 243
    .local v2, media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :cond_3
    move-object v2, v4

    .line 247
    goto :goto_0
.end method

.method public getStorageList(I)Ljava/util/List;
    .locals 7
    .parameter "deviceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsClient;->getDevice(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    .line 202
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v3

    .line 205
    :cond_1
    const-string v4, "AirSharing_DmsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStorageList() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const/16 v6, 0xf

    invoke-interface {v4, v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->getMediaTotalCount(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I

    move-result v2

    .line 208
    .local v2, len:I
    if-lez v2, :cond_0

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v3, storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-interface {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-interface {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;->cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "destPath"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsClient;->getDevice(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    .line 252
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 256
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public importFileByUDN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "deviceUDN"
    .parameter "objectHandle"
    .parameter "destPath"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsClient;->getDeviceByUDN(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    .line 261
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeDmsListener()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsClient;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 90
    return-void
.end method

.method public removeListener(Lcom/android/gallery3d/data/DmsClient$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsClient;->mDevicesList:Ljava/util/List;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
