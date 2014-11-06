.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;
.super Ljava/lang/Object;
.source "ShareFileBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .locals 1
    .parameter "path"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;-><init>(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getAllFilePathsInDir(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "dirPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, mRootFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, mFileList:[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 78
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 83
    :cond_0
    return-object v3

    .line 78
    :cond_1
    aget-object v0, v1, v4

    .line 79
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isDirectory(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    return v1
.end method
