.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;
.source "DlnaDmsVideoMediaInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artists:Ljava/lang/String;

.field private dateTaken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private director:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private height:I

.field private language:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field private subTitleUri:Ljava/lang/String;

.field private thumbnailsUri:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->artists:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->dateTaken:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->height:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->subTitleUri:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->thumbnailsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->width:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->album:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setArtists(Ljava/lang/String;)V
    .locals 0
    .parameter "artists"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->artists:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDateTaken(Ljava/lang/String;)V
    .locals 0
    .parameter "dateTaken"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->dateTaken:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0
    .parameter "director"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->director:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->duration:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .parameter "genre"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->genre:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 75
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->height:I

    .line 76
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->language:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0
    .parameter "publisher"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->publisher:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSubTitleUri(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitleUri"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->subTitleUri:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setThumbnailsUri(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailsUri"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->thumbnailsUri:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 69
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsVideoMediaInfo;->width:I

    .line 70
    return-void
.end method
