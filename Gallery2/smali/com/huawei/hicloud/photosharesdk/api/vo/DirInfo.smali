.class public Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
.super Ljava/lang/Object;
.source "DirInfo.java"


# instance fields
.field private abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

.field private baseDir:Ljava/lang/String;

.field private baseDir_old:Ljava/lang/String;

.field private big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

.field private maxStorage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    return-object v0
.end method

.method public getBaseDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseDir_old()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir_old:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    return-object v0
.end method

.method public getMaxStorage()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->maxStorage:I

    return v0
.end method

.method public setAbbr_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V
    .locals 0
    .parameter "abbr_size"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    .line 82
    return-void
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 0
    .parameter "baseDir"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setBaseDir_old(Ljava/lang/String;)V
    .locals 0
    .parameter "baseDir_old"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir_old:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBig_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V
    .locals 0
    .parameter "big_size"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    .line 96
    return-void
.end method

.method public setMaxStorage(I)V
    .locals 0
    .parameter "maxStorage"

    .prologue
    .line 67
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->maxStorage:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v0, retStr:Ljava/lang/StringBuilder;
    const-string v1, "DirInfo [baseDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxStorage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->maxStorage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", abbr_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", big_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", baseDir_old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir_old:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    goto :goto_1

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->baseDir_old:Ljava/lang/String;

    goto :goto_2
.end method
