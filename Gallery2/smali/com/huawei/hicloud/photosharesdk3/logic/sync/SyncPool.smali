.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
.source "SyncPool.java"


# static fields
.field public static final CHANGETYPE_ADDFOLDER:Ljava/lang/String; = "1"

.field public static final CHANGETYPE_CONTENT:Ljava/lang/String; = "0"

.field public static final CHANGETYPE_DELFOLDER:Ljava/lang/String; = "3"

.field public static final CHANGETYPE_MODIFYDATA:Ljava/lang/String; = "2"

.field public static final FOLDERTYPE_ALL:Ljava/lang/String; = "3"

.field public static final FOLDERTYPE_MYPHOTO:Ljava/lang/String; = "0"

.field public static final FOLDERTYPE_PUSH:Ljava/lang/String; = "4"

.field public static final FOLDERTYPE_RECEIVE:Ljava/lang/String; = "2"

.field public static final FOLDERTYPE_SHARE:Ljava/lang/String; = "1"

.field public static final OPRATETYPE_DATA:Ljava/lang/String; = "2"

.field public static final OPRATETYPE_FILE:Ljava/lang/String; = "3"

.field public static final OPRATETYPE_FOLDER:Ljava/lang/String; = "1"

.field public static final PARAM_CHANGETYPE_KEY:Ljava/lang/String; = "2"

.field public static final PARAM_FOLDERTYPE_KEY:Ljava/lang/String; = "0"

.field public static final PARAM_SHAREPATH_KEY:Ljava/lang/String; = "1"


# instance fields
.field private changeType:Ljava/lang/String;

.field private folderType:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "folderType"
    .parameter "changeType"
    .parameter "sharePath"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 203
    const/4 v0, 0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 214
    const/4 v0, 0x0

    .local v0, flag:Z
    move-object v1, p1

    .line 215
    check-cast v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;

    .line 216
    .local v1, syncPoolParam:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->getSharePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->getChangeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCalls()[Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 137
    const/4 v0, 0x3

    new-array v12, v0, [Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 138
    .local v12, baseCallables:[Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v1, callParam:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "0"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "2"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "1"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v6, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SyncPool.getCalls.....folderType:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",changeType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 144
    const-string v9, ",sharePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-static {v0, v6, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 146
    aput-object v0, v12, v13

    .line 148
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;

    move-wide v8, v2

    move v10, v4

    move v11, v5

    .line 149
    invoke-direct/range {v6 .. v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 148
    aput-object v6, v12, v5

    .line 150
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;

    move-wide v8, v2

    move v10, v4

    move v11, v13

    .line 151
    invoke-direct/range {v6 .. v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 150
    aput-object v6, v12, v4

    .line 155
    return-object v12
.end method

.method public getChangeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setChangeType(Ljava/lang/String;)V
    .locals 0
    .parameter "changeType"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->changeType:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->folderType:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;->sharePath:Ljava/lang/String;

    .line 176
    return-void
.end method
