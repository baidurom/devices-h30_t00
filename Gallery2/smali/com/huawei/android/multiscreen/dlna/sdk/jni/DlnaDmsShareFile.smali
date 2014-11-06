.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
.super Ljava/lang/Object;
.source "DlnaDmsShareFile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaDmsShareFile"


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private parentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

.field private path:Ljava/lang/String;

.field private pathLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "mPath"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->setPath(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->setPathLength(I)V

    .line 42
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->setFileName(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileNameLength:I

    .line 44
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileNameLength:I

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->setFileNameLength(I)V

    .line 45
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method private getNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 111
    .end local p1
    :goto_0
    return-object p1

    .line 110
    .restart local p1
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 111
    .local v0, lastIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileName:Ljava/lang/String;

    .line 136
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileNameLength:I

    .line 137
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    .line 138
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->pathLength:I

    .line 139
    return-void
.end method

.method public clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .locals 5

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 123
    .local v2, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const-string v3, "DlnaDmsShareFile"

    const-string v4, "DlnaDmsShareFile happened CloneNotSupportedException"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v0

    return-object v0
.end method

.method public getAllOrPartFlag()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameLength()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileNameLength:I

    return v0
.end method

.method public getParentDir()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->parentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    return-object v0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, parentDirPath:Ljava/lang/String;
    const-string v1, "DlnaDmsShareFile"

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLength()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->pathLength:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFileNameLength(I)V
    .locals 0
    .parameter "fileNameLength"

    .prologue
    .line 56
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->fileNameLength:I

    .line 57
    return-void
.end method

.method public setParentDir(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V
    .locals 0
    .parameter "parentDir"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->parentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 151
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .parameter "_path"

    .prologue
    .line 70
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPathLength(I)V
    .locals 0
    .parameter "pathLength"

    .prologue
    .line 86
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->pathLength:I

    .line 87
    return-void
.end method
