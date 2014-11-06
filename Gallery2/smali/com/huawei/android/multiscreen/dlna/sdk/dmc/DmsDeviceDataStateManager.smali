.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
.super Ljava/lang/Object;
.source "DmsDeviceDataStateManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;


# static fields
.field private static final Tag:Ljava/lang/String; = "DmsDeviceDataStateManager"


# instance fields
.field private dataCacheStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getAudioSearchCount(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 99
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getAudioSearchCount()I

    move-result v1

    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAudioSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 43
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    :goto_1
    return-object v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getAudioSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v1

    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageSearchCount(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 113
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getImageSearchCount()I

    move-result v1

    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 57
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    :goto_1
    return-object v1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getImageSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageVideoSearchCount(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 141
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getImageVideoSearchCount()I

    move-result v1

    goto :goto_1

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 85
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    :goto_1
    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getImageVideoSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v1

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIsAudioSearchFailed(I)Z
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 155
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getIsAudioSearchFailed()Z

    move-result v1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIsContinue(I)Z
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 211
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getIsContinue()Z

    move-result v1

    goto :goto_1

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIsImageSearchFailed(I)Z
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 169
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getIsImageSearchFailed()Z

    move-result v1

    goto :goto_1

    .line 164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIsImage_VideoSearchFailed(I)Z
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 197
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getIsImage_VideoSearchFailed()Z

    move-result v1

    goto :goto_1

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIsVideoSearchFailed(I)Z
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 183
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getIsVideoSearchFailed()Z

    move-result v1

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSystemUpdateID(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 225
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getSystemUpdateID()I

    move-result v1

    goto :goto_1

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getVideoSearchCount(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 127
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getVideoSearchCount()I

    move-result v1

    goto :goto_1

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getVideoSearchState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 71
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->NO_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    :goto_1
    return-object v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getVideoSearchState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z
    .locals 4
    .parameter "deviceId"
    .parameter "type"

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, result:Z
    const/4 v1, 0x0

    .line 289
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 294
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 296
    const/4 v2, 0x1

    .line 300
    :goto_1
    return v2

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 291
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v3, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getLock(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 486
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->removeDeviceSearchState(I)V

    .line 487
    return-void
.end method

.method public onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 479
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    .line 480
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v1

    .line 479
    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;-><init>(I)V

    .line 481
    .local v0, dataCacheState:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public removeAllDeviceSearchState()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    return-void
.end method

.method public removeDeviceSearchState(I)V
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 469
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 474
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 469
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAudioSearchCount(II)V
    .locals 2
    .parameter "deviceId"
    .parameter "count"

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 390
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setAudioSearchCount(I)V

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 338
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setAudioSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImageSearchCount(II)V
    .locals 2
    .parameter "deviceId"
    .parameter "count"

    .prologue
    .line 398
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 403
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setImageSearchCount(I)V

    .line 398
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 351
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setImageSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImageVideoSearchCount(II)V
    .locals 2
    .parameter "deviceId"
    .parameter "count"

    .prologue
    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 429
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setImageVideoSearchCount(I)V

    .line 424
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 377
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setImageVideoSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIsAudioSearchFailed(ILjava/lang/Boolean;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setIsAudioSearchFailed(Ljava/lang/Boolean;)V

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIsContinue(IZ)V
    .locals 3
    .parameter "deviceId"
    .parameter "isContinue"

    .prologue
    .line 450
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 455
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setIsContinue(Ljava/lang/Boolean;)V

    .line 450
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIsImageSearchFailed(ILjava/lang/Boolean;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 252
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setIsImageSearchFailed(Ljava/lang/Boolean;)V

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIsImage_VideoSearchFailed(ILjava/lang/Boolean;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 278
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setIsImage_VideoSearchFailed(Ljava/lang/Boolean;)V

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIsVideoSearchFailed(ILjava/lang/Boolean;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 265
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setIsVideoSearchFailed(Ljava/lang/Boolean;)V

    .line 260
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSystemUpdateID(II)V
    .locals 2
    .parameter "deviceId"
    .parameter "systemUpdateID"

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 442
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setSystemUpdateID(I)V

    .line 437
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setVideoSearchCount(II)V
    .locals 2
    .parameter "deviceId"
    .parameter "count"

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 416
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setVideoSearchCount(I)V

    .line 411
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    .locals 2
    .parameter "deviceId"
    .parameter "state"

    .prologue
    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 364
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->setVideoSearchState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z
    .locals 4
    .parameter "deviceId"
    .parameter "type"

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, result:Z
    const/4 v1, 0x0

    .line 313
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 318
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 320
    const/4 v2, 0x1

    .line 324
    :goto_1
    return v2

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 315
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->dataCacheStateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;

    invoke-virtual {v3, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsDataCacheState;->getLock(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
