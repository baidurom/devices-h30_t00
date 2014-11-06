.class public Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;
.super Ljava/lang/Object;
.source "ImageEntity.java"


# instance fields
.field public imageBucketDisplayName:Ljava/lang/String;

.field public imageDate:J

.field public imageDisplayName:Ljava/lang/String;

.field public imageId:J

.field public imageModifyDate:J

.field public imagePath:Ljava/lang/String;

.field public imageSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageId:J

    .line 5
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    .line 6
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageSize:J

    .line 7
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    .line 10
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDate:J

    .line 11
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageModifyDate:J

    .line 13
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getImageBucketDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDate()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDate:J

    return-wide v0
.end method

.method public getImageDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageId:J

    return-wide v0
.end method

.method public getImageModifiedDate()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageModifyDate:J

    return-wide v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageSize:J

    return-wide v0
.end method

.method public setImageBucketDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setImageDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDate:J

    .line 49
    return-void
.end method

.method public setImageDisplayname(Ljava/lang/String;)V
    .locals 0
    .parameter "displayname"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setImageId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 20
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageId:J

    .line 21
    return-void
.end method

.method public setImageModifiedDate(J)V
    .locals 0
    .parameter "modifiedDate"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageModifyDate:J

    .line 53
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setImageSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageSize:J

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ImageEntity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", add time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", mod time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageModifyDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
