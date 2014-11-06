.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileFilterDefault;
.super Ljava/lang/Object;
.source "ShareFileFilterDefault.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 58
    .local v7, lastSlash:I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 60
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    .line 70
    const/16 v5, 0x9

    move-object v0, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 74
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    .line 75
    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p1

    .line 74
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :cond_2
    if-ne v8, v9, :cond_3

    .line 77
    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p1

    .line 76
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #length:I
    :cond_3
    move v1, v4

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public isValidSharePath(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, isValidFile:Z
    if-nez p1, :cond_0

    move v2, v1

    .line 40
    .end local v1           #isValidFile:Z
    .local v2, isValidFile:I
    :goto_0
    return v2

    .line 28
    .end local v2           #isValidFile:I
    .restart local v1       #isValidFile:Z
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 30
    .restart local v2       #isValidFile:I
    goto :goto_0

    .line 31
    .end local v2           #isValidFile:I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 40
    .restart local v2       #isValidFile:I
    goto :goto_0

    .line 33
    .end local v2           #isValidFile:I
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileFilterDefault;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^.*?\\.(?i)(jpg|jpeg|gif|png|bmp|mp3|wma|ogg|aac|m4a|mid|midi|mp4|3gp|3g2|wmv|ts|mpg|mpeg|3gpp|mkv|avi|asf)(?-i)$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    const/4 v1, 0x1

    goto :goto_1
.end method
