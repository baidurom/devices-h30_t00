.class public Lcom/android/gallery3d/data/PhotoShareContext;
.super Ljava/lang/Object;
.source "PhotoShareContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoshareContext"


# instance fields
.field private mScannerClient:Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareContext;->mScannerClient:Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;

    .line 59
    return-void
.end method


# virtual methods
.method public copyFile(Lcom/android/gallery3d/data/PhotoShareImage;)Z
    .locals 9
    .parameter "photoshareImage"

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/gallery3d/data/PhotoShareImage;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, dest:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "CloudPicture"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .end local v0           #dest:Ljava/io/File;
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 67
    .local v3, result:Z
    const-string v5, "PhotoshareContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mkdir result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/PhotoShareImage;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v2, destFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, srcFile:Ljava/io/File;
    invoke-static {v4, v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/android/gallery3d/data/PhotoShareContext;->mScannerClient:Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/PhotoShareContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 72
    const/4 v5, 0x1

    .line 78
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #destFile:Ljava/io/File;
    .end local v3           #result:Z
    .end local v4           #srcFile:Ljava/io/File;
    :goto_0
    return v5

    .line 75
    :cond_0
    const-string v5, "PhotoshareContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No space to import "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/gallery3d/data/PhotoShareImage;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " whose size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/gallery3d/data/PhotoShareImage;->getSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
