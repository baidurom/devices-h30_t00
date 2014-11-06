.class public Lcom/android/gallery3d/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/gallery3d/util/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseFileInSequence(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;
    .locals 8
    .parameter "root"
    .parameter "fileNameSequence"
    .parameter "isDir"

    .prologue
    const/4 v3, 0x0

    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 62
    :cond_0
    sget-object v4, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdir root file failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 98
    :cond_1
    :goto_0
    return-object v2

    .line 67
    :cond_2
    array-length v4, p1

    new-array v0, v4, [Ljava/io/File;

    .line 68
    .local v0, fileList:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 69
    new-instance v4, Ljava/io/File;

    aget-object v5, p1, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_3
    const/4 v4, 0x0

    aget-object v2, v0, v4

    .line 72
    .local v2, selectFile:Ljava/io/File;
    const/4 v1, 0x0

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 76
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v1, :cond_6

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 77
    :cond_4
    aget-object v2, v0, v1

    .line 83
    :cond_5
    sget-object v4, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The select output file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object v2, v3

    .line 87
    goto :goto_0

    .line 72
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_8

    .line 92
    sget-object v4, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create dir failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 93
    goto/16 :goto_0

    .line 94
    :cond_8
    if-nez p2, :cond_1

    invoke-static {v2}, Lcom/android/gallery3d/util/FileUtils;->createNewFileWithCatch(Ljava/io/File;)I

    move-result v4

    if-gtz v4, :cond_1

    move-object v2, v3

    .line 95
    goto/16 :goto_0
.end method

.method public static createNewFileWithCatch(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    .line 52
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create new file failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 13
    .parameter "file"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move v6, v9

    .line 46
    :cond_1
    :goto_0
    return v6

    .line 23
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 27
    .local v5, listFiles:[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v10, v5

    if-nez v10, :cond_5

    :cond_4
    move v6, v8

    .line 28
    goto :goto_0

    .line 30
    :cond_5
    const/4 v6, 0x1

    .line 31
    .local v6, success:Z
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 32
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 33
    .local v3, isDir:Z
    invoke-static {v1}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v7

    .line 37
    .local v7, successThisFile:Z
    if-eqz v3, :cond_6

    .line 38
    if-eqz v7, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_8

    move v7, v8

    .line 40
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 41
    sget-object v10, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v6, 0x0

    .line 31
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move v7, v9

    .line 38
    goto :goto_2
.end method

.method public static getNoneDuplicateFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "root"
    .parameter "suggestName"

    .prologue
    .line 102
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 103
    .local v0, indexOfDot:I
    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, nameBody:Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, nameSuffix:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/android/gallery3d/util/FileUtils;->getNoneDuplicateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .end local v1           #nameBody:Ljava/lang/String;
    .end local v2           #nameSuffix:Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 103
    goto :goto_0

    .line 104
    .restart local v1       #nameBody:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getNoneDuplicateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "root"
    .parameter "suggestName"
    .parameter "fileSuffix"

    .prologue
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, fullFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    .line 124
    :goto_0
    return-object v4

    .line 116
    :cond_0
    const-string v1, "%s-%d%s"

    .line 117
    .local v1, format:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_2

    .line 118
    const-string v4, "%s-%d%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    .line 121
    goto :goto_0

    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_2
    sget-object v4, Lcom/android/gallery3d/util/FileUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "All Possile is used"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static readDataToWrite(Ljava/io/InputStream;Ljava/io/OutputStream;[BJ)V
    .locals 5
    .parameter "is"
    .parameter "os"
    .parameter "buffer"
    .parameter "readCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    const/4 v1, -0x1

    .line 139
    .local v1, realReadCount:I
    array-length v0, p2

    .line 140
    .local v0, bufferSize:I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    int-to-long v2, v0

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, p2, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    invoke-virtual {p1, p2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    int-to-long v2, v1

    sub-long/2addr p3, v2

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 145
    return-void
.end method

.method public static skip(Ljava/io/InputStream;J)V
    .locals 5
    .parameter "is"
    .parameter "skipCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 131
    const-wide/16 v0, -0x1

    .line 132
    .local v0, realSkipCount:J
    :goto_0
    cmp-long v2, p1, v3

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    .line 133
    sub-long/2addr p1, v0

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method
