.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;
.source "DlnaDmsPhotoMediaInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private dateTaken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private height:I

.field private thumbnailsUri:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->dateTaken:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->height:I

    return v0
.end method

.method public getThumbnailsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->thumbnailsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->width:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->album:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->date:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDateTaken(Ljava/lang/String;)V
    .locals 0
    .parameter "dateTaken"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->dateTaken:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->description:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 57
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->height:I

    .line 58
    return-void
.end method

.method public setThumbnailsUri(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailsUri"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->thumbnailsUri:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 51
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsPhotoMediaInfo;->width:I

    .line 52
    return-void
.end method
