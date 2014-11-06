.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
.source "DlnaAVInfo.java"


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final BOOKMARK:Ljava/lang/String; = "bookmark"

.field public static final COMPOSER:Ljava/lang/String; = "composer"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final IS_ALARM:Ljava/lang/String; = "is_alarm"

.field public static final IS_MISIC:Ljava/lang/String; = "is_music"

.field public static final IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final IS_PODCAST:Ljava/lang/String; = "is_podcast"

.field public static final IS_RINGTONE:Ljava/lang/String; = "is_ringtone"

.field public static final TITLE_KEY:Ljava/lang/String; = "title_key"

.field public static final TRACK:Ljava/lang/String; = "track"

.field public static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field protected albumId:I

.field protected artist:Ljava/lang/String;

.field protected artistId:I

.field protected bookmark:I

.field protected composer:Ljava/lang/String;

.field protected duration:Ljava/lang/String;

.field protected isAlarm:I

.field protected isMusic:I

.field protected isNotification:I

.field protected isPodcast:I

.field protected isRingtone:I

.field protected titleKey:Ljava/lang/String;

.field protected track:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlbumId()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->albumId:I

    return v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artistId:I

    return v0
.end method

.method public getBookmark()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->bookmark:I

    return v0
.end method

.method public final getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->composer:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getInfo(Landroid/database/Cursor;)V

    .line 29
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "title_key"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->titleKey:Ljava/lang/String;

    .line 33
    const-string v0, "artist_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artistId:I

    .line 34
    const-string v0, "artist"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artist:Ljava/lang/String;

    .line 35
    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->duration:Ljava/lang/String;

    .line 36
    const-string v0, "composer"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->composer:Ljava/lang/String;

    .line 37
    const-string v0, "album_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->albumId:I

    .line 38
    const-string v0, "year"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->year:I

    .line 39
    const-string v0, "track"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->track:I

    .line 41
    const-string v0, "bookmark"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->bookmark:I

    .line 42
    const-string v0, "is_ringtone"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isRingtone:I

    .line 43
    const-string v0, "is_music"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->track:I

    .line 44
    const-string v0, "is_alarm"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isAlarm:I

    .line 45
    const-string v0, "title_key"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isNotification:I

    .line 46
    const-string v0, "is_podcast"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isPodcast:I

    .line 48
    const-string v0, "device_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    goto :goto_0
.end method

.method public final getIsAlarm()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isAlarm:I

    return v0
.end method

.method public final getIsMusic()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isMusic:I

    return v0
.end method

.method public final getIsNotification()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isNotification:I

    return v0
.end method

.method public final getIsPodcast()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isPodcast:I

    return v0
.end method

.method public final getIsRingtone()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isRingtone:I

    return v0
.end method

.method public getTitleKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->titleKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->track:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->year:I

    return v0
.end method

.method public final setAlbumId(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 302
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->albumId:I

    .line 303
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artist:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setArtistId(I)V
    .locals 0
    .parameter "artistId"

    .prologue
    .line 245
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->artistId:I

    .line 246
    return-void
.end method

.method public setBookmark(I)V
    .locals 0
    .parameter "bookmark"

    .prologue
    .line 454
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->bookmark:I

    .line 455
    return-void
.end method

.method public final setComposer(Ljava/lang/String;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->composer:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->duration:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public final setIsAlarm(I)V
    .locals 0
    .parameter "isAlarm"

    .prologue
    .line 397
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isAlarm:I

    .line 398
    return-void
.end method

.method public final setIsMusic(I)V
    .locals 0
    .parameter "isMusic"

    .prologue
    .line 378
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isMusic:I

    .line 379
    return-void
.end method

.method public final setIsNotification(I)V
    .locals 0
    .parameter "isNotification"

    .prologue
    .line 416
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isNotification:I

    .line 417
    return-void
.end method

.method public final setIsPodcast(I)V
    .locals 0
    .parameter "isPodcast"

    .prologue
    .line 435
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isPodcast:I

    .line 436
    return-void
.end method

.method public final setIsRingtone(I)V
    .locals 0
    .parameter "isRingtone"

    .prologue
    .line 359
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->isRingtone:I

    .line 360
    return-void
.end method

.method public setTitleKey(Ljava/lang/String;)V
    .locals 0
    .parameter "titleKey"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->titleKey:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public final setTrack(I)V
    .locals 0
    .parameter "track"

    .prologue
    .line 321
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->track:I

    .line 322
    return-void
.end method

.method public final setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 340
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->year:I

    .line 341
    return-void
.end method
