.class public Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
.super Ljava/lang/Object;
.source "PhotoSize.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 45
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->height:I

    .line 46
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 37
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->width:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PhotoSize [width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
