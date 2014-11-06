.class public Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;
.super Ljava/lang/Object;
.source "ImageEntity.java"


# instance fields
.field private imageBucketDisplayName:Ljava/lang/String;

.field private imageDate:J

.field private imageDisplayName:Ljava/lang/String;

.field private imageId:J

.field private imageModifyDate:J

.field private imagePath:Ljava/lang/String;

.field private imageSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageId:J

    .line 18
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    .line 23
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageSize:J

    .line 28
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    .line 43
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDate:J

    .line 48
    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageModifyDate:J

    .line 58
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getImageBucketDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDate()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDate:J

    return-wide v0
.end method

.method public getImageDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageId:J

    return-wide v0
.end method

.method public getImageModifiedDate()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageModifyDate:J

    return-wide v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageSize:J

    return-wide v0
.end method

.method public setImageBucketDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setImageDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDate:J

    .line 106
    return-void
.end method

.method public setImageDisplayname(Ljava/lang/String;)V
    .locals 0
    .parameter "displayname"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setImageId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageId:J

    .line 71
    return-void
.end method

.method public setImageModifiedDate(J)V
    .locals 0
    .parameter "modifiedDate"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageModifyDate:J

    .line 111
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setImageSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageSize:J

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ImageEntity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", add time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", mod time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-wide v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ImageEntity;->imageModifyDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
