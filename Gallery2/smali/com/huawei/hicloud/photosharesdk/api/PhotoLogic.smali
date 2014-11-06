.class public Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;
.super Ljava/lang/Object;
.source "PhotoLogic.java"


# static fields
.field private static final FAILED_CODE:I = 0x1

.field public static final ORDER_TIME_ASC:I = 0x0

.field public static final ORDER_TIME_DESC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoLogic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method public static addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "localPath"
    .parameter "orgPhotoPath"

    .prologue
    .line 143
    const/4 v1, 0x1

    .line 144
    .local v1, ret:I
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "localPath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 147
    const-string v5, "orgPhotoPaht="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz p2, :cond_4

    .line 149
    array-length v5, p2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_3

    .line 155
    :goto_2
    const-string v4, "PhotoLogic"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addPhotoToShared,input is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 158
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 162
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    :cond_1
    return v1

    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    move-object v4, p1

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    aget-object v3, p2, v4

    .line 150
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    .end local v3           #str:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static delPhotoFromMyPhoto(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v1, 0x1

    .line 118
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 119
    const-string v3, "PhotoLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "delPhotoFromMyPhoto,input is:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->delPhotoFromMyPhoto(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v1

    .line 126
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    :cond_1
    return v1

    .line 119
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static delPhotoFromShared(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v1, 0x1

    .line 94
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 95
    const-string v3, "PhotoLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "delPhotoFromShared,input is:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->delPhotoFromShared(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v1

    .line 102
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    :cond_1
    return v1

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .parameter "localPath"
    .parameter "orderby"
    .parameter "isUpstate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "PhotoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSharePhoto , input is :localPath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    const-string v4, ", orderby :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    :cond_1
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_2

    .line 76
    const-string v2, "PhotoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSharePhoto , return list is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    return-object v1
.end method

.method public static photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;IZ)I
    .locals 8
    .parameter "context"
    .parameter "photoList"
    .parameter "photoType"
    .parameter "isPriority"

    .prologue
    .line 179
    const/4 v2, 0x1

    .line 180
    .local v2, ret:I
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "photoDownload input is = photoList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    if-eqz p1, :cond_3

    .line 184
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_2

    .line 190
    :goto_1
    const-string v4, "PhotoLogic"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-lez v4, :cond_1

    .line 193
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;IZ)I

    move-result v2

    .line 198
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    :cond_1
    return v2

    .line 184
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_2
    aget-object v1, p1, v4

    .line 185
    .local v1, photo:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v1           #photo:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    :cond_3
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static photoDownloadCancel(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)I
    .locals 6
    .parameter "context"
    .parameter "sharePhoto"

    .prologue
    .line 231
    const/4 v1, 0x1

    .line 232
    .local v1, ret:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "photoDownloadCancel sharePhoto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 240
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "photoDownloadCancel param error"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v1           #ret:I
    :goto_0
    return v1

    .line 244
    .restart local v1       #ret:I
    :cond_2
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoDownloadCancel(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)V

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startPhotoStreamUI(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 211
    const/4 v1, 0x1

    .line 212
    .local v1, ret:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "startPhotoStreamUI..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->startPhotoStreamUI(Landroid/content/Context;)I

    move-result v1

    .line 219
    return v1
.end method
