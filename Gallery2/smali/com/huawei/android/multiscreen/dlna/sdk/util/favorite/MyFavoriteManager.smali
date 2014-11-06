.class public Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;
.super Ljava/lang/Object;
.source "MyFavoriteManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/IMyFavoriteManager;


# static fields
.field private static favoriteFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transaction:Z

.field private updateFavoriteFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xmlManager:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    .line 32
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->xmlManager:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTransaction()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    .line 111
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method

.method public endTransaction()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    .line 103
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->xmlManager:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->saveFavoriteList(Ljava/util/List;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public final getFavorite()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, temp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-object v0
.end method

.method public getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "path"

    .prologue
    .line 69
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    goto :goto_0
.end method

.method public getTransactionFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "path"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    goto :goto_0
.end method

.method public removePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTransaction()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->updateFavoriteFileList:Ljava/util/List;

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->favoriteFileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteManager;->transaction:Z

    .line 95
    return-void
.end method
