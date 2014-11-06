.class public Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final NONE:I = 0x0

.field public static final SIZE:I = 0x80000

.field private static final TAG:Ljava/lang/String; = null

.field public static final THUMB_NAME:Ljava/lang/String; = "thumb"

.field public static final THUMB_SEPERATER:Ljava/lang/String; = "_"

.field private static volatile mMntSvc:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 1246
    const/16 v4, 0x10

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    .line 1248
    .local v1, hexDigits:[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 1249
    .local v3, temp:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_0

    .line 1254
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 1250
    :cond_0
    aget-byte v0, p0, v2

    .line 1251
    .local v0, b:B
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 1252
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 1249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static convertExtensionFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "extensionStr"

    .prologue
    .line 637
    const/4 v2, 0x0

    .line 638
    .local v2, outName:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 652
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 642
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, fileEx:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 648
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 647
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 873
    const/4 v2, 0x0

    .line 876
    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 882
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 896
    .end local v1           #in:Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    .line 897
    .local v3, setLastModified:Z
    if-nez v3, :cond_0

    .line 899
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "setLastModified fail"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 906
    :cond_1
    return v2

    .line 879
    .end local v3           #setLastModified:Z
    .restart local v1       #in:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .line 882
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 889
    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 890
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "IOException : "

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 892
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 893
    const/4 v2, 0x0

    goto :goto_0

    .line 885
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 886
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    sget-object v5, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "InputStream close : "

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 887
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 885
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 886
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "InputStream close : "

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 887
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public static copyFileIntoFolder(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .parameter "mContext"
    .parameter "srcFile"
    .parameter "destFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 704
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 705
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "The argument is illegal,Please check source file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and dest file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 707
    const-string v9, ",they have existed?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 705
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 710
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 711
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Please check dest file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 712
    const-string v9, ",it should be a folder ,but a file now"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 711
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 715
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, destFolderPath:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 717
    invoke-static {p0, p2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z

    .line 720
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 722
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-static {p0, p1, v7}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copySingleFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    .line 754
    :cond_4
    return-void

    .line 727
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, srcFileName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, newDestFolderName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .local v4, newDestFolder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 731
    invoke-static {p0, v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z

    .line 734
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 735
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_4

    array-length v7, v1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_4

    .line 740
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v1

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 741
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 740
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_7
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 746
    aget-object v7, v1, v2

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 747
    aget-object v10, v1, v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-static {p0, v7, v8}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copySingleFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    goto :goto_1

    .line 750
    :cond_8
    aget-object v7, v1, v2

    invoke-static {p0, v7, v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copyFileIntoFolder(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method public static copyFileIntoFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "srcFilePath"
    .parameter "destFolderPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The argument is illegal ,please check the srouce file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 856
    const-string v2, " and the dest file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copyFileIntoFolder(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    .line 860
    return-void
.end method

.method public static copySingleFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "mContext"
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 920
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please check source:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    const-string v3, " and dest file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    const-string v3, " ,and they must not be folder !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 926
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Source File:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    :cond_2
    const/4 v0, 0x0

    .line 935
    .local v0, isSuccess:Z
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isHasEnoughSpace(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 936
    invoke-static {p1, p2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 939
    :cond_3
    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->setSinglePermission(Ljava/io/File;)V

    .line 940
    return v0
.end method

.method public static copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    .locals 13
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v9, 0x0

    .line 953
    const/4 v4, 0x0

    .line 955
    .local v4, isSuccess:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 956
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 957
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v8

    .line 958
    .local v8, result:Z
    if-nez v8, :cond_0

    .line 960
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "destFile.getParentFile().mkdirs() fail"

    invoke-static {v10, v11}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .end local v8           #result:Z
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 964
    .local v1, destResult:Z
    if-nez v1, :cond_1

    .line 966
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "destFile.createNewFile() fail"

    invoke-static {v10, v11}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v1           #destResult:Z
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 970
    .local v5, out:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 971
    .local v3, inputFC:Ljava/nio/channels/FileChannel;
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 972
    .local v6, outputFC:Ljava/nio/channels/FileChannel;
    const/high16 v10, 0x8

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 990
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 991
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 992
    .local v7, r:I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_2

    .line 993
    const/4 v4, 0x1

    .line 1003
    const/4 v0, 0x0

    .line 1006
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1011
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1015
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v9, v4

    .line 1026
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v3           #inputFC:Ljava/nio/channels/FileChannel;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outputFC:Ljava/nio/channels/FileChannel;
    .end local v7           #r:I
    :goto_2
    return v9

    .line 997
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v3       #inputFC:Ljava/nio/channels/FileChannel;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #outputFC:Ljava/nio/channels/FileChannel;
    .restart local v7       #r:I
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 998
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 999
    invoke-virtual {v6, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1002
    .end local v7           #r:I
    :catchall_0
    move-exception v10

    .line 1003
    const/4 v0, 0x0

    .line 1006
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1011
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 1015
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1021
    :goto_3
    :try_start_5
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1023
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v3           #inputFC:Ljava/nio/channels/FileChannel;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outputFC:Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v2

    .line 1024
    .local v2, e:Ljava/io/IOException;
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "IOException"

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1025
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1017
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v3       #inputFC:Ljava/nio/channels/FileChannel;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #outputFC:Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v2

    .line 1018
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    sget-object v11, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v12, "OutputStream close : "

    invoke-static {v11, v12, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1017
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #r:I
    :catch_2
    move-exception v2

    .line 1018
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "OutputStream close : "

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method public static createFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .parameter "fileName"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 1133
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isHasEnoughSpace(Landroid/content/Context;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1134
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;

    invoke-direct {v4, p0}, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1137
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1140
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1142
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 1143
    .local v0, dirResult:Z
    if-nez v0, :cond_1

    .line 1145
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "getParentFile().mkdirs() fail"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .end local v0           #dirResult:Z
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    .line 1149
    .local v3, result:Z
    if-nez v3, :cond_2

    .line 1151
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "file.createNewFile() fail"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v3           #result:Z
    :cond_2
    :goto_0
    return-object v2

    .line 1153
    :catch_0
    move-exception v1

    .line 1155
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "createFile"

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1156
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createNewFolder(Landroid/content/Context;Ljava/io/File;)Z
    .locals 11
    .parameter "context"
    .parameter "newFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isHasEnoughSpace(Landroid/content/Context;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 297
    new-instance v8, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    :cond_0
    const/16 v0, 0x200

    .line 301
    .local v0, StatCharacter:I
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, getpath:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v0, :cond_2

    .line 376
    :cond_1
    :goto_0
    return v4

    .line 305
    :cond_2
    const/4 v4, 0x0

    .line 307
    .local v4, isSuccess:Z
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 309
    const/4 v4, 0x1

    .line 320
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 321
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->setSinglePermission(Ljava/io/File;)V

    .line 323
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v5, nomedia:Ljava/io/File;
    const/4 v6, 0x0

    .line 329
    .local v6, nomediaMake:Z
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v6

    .line 330
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_2
    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 342
    const/4 v7, 0x0

    .line 345
    .local v7, result:Z
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 346
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_3
    if-eqz v7, :cond_1

    .line 355
    const-string v8, ""

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v5           #nomedia:Ljava/io/File;
    .end local v6           #nomediaMake:Z
    .end local v7           #result:Z
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 314
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v8, :cond_3

    .line 316
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mkdirs isSuccess:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 332
    .restart local v5       #nomedia:Ljava/io/File;
    .restart local v6       #nomediaMake:Z
    :catch_0
    move-exception v2

    .line 335
    .local v2, e1:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "createNewFolder"

    invoke-static {v8, v9, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 348
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v7       #result:Z
    :catch_1
    move-exception v1

    .line 351
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "createNewFolder"

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static createNewFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "parentFolderPath"
    .parameter "newFolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, newFile:Ljava/io/File;
    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static createNomeidaFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 7
    .parameter "context"
    .parameter "newFile"

    .prologue
    .line 382
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v3, nomedia:Ljava/io/File;
    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->setSinglePermission(Ljava/io/File;)V

    .line 391
    const/4 v4, 0x0

    .line 394
    .local v4, nomediaMake:Z
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 404
    :goto_1
    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 408
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 417
    :cond_2
    :goto_2
    const-string v5, "isSwitchRecOn"

    invoke-static {p0, v5}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 418
    .local v2, isSwitchRecOn:Z
    if-eqz v2, :cond_0

    .line 421
    if-eqz v4, :cond_0

    .line 423
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 426
    const-string v5, "filemanager.flag"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    const-string v5, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isSwitchRecOn:Z
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "createNewFolder"

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 410
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 413
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "createNewFolder"

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static dbankPath2LocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "dbankPath"

    .prologue
    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 499
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    :cond_0
    const/4 v2, 0x1

    .line 516
    :goto_0
    return v2

    .line 502
    :cond_1
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->setSinglePermission(Ljava/io/File;)V

    .line 504
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 510
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 511
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    .line 516
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 511
    :cond_4
    aget-object v1, v0, v2

    .line 512
    .local v1, tmpFile:Ljava/io/File;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 522
    .local v1, isComplete:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 533
    .end local v1           #isComplete:Z
    .local v2, isComplete:I
    :goto_0
    return v2

    .line 526
    .end local v2           #isComplete:I
    .restart local v1       #isComplete:Z
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_1
    move v2, v1

    .line 533
    .restart local v2       #isComplete:I
    goto :goto_0

    .line 531
    .end local v2           #isComplete:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static generateImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "photoLocalPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1376
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v8

    .line 1377
    .local v8, photoSize:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1378
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1379
    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1380
    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1381
    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 1382
    const/4 v10, 0x4

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1383
    const/high16 v10, 0x8

    new-array v10, v10, [B

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1384
    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1385
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1386
    new-instance v10, Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;

    invoke-direct {v10, p1}, Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1391
    :cond_0
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v10

    .line 1392
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v11

    const/4 v12, 0x2

    .line 1391
    invoke-static {v0, v10, v11, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1394
    .local v1, bitmap2:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1395
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/File;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateThumbLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v7, outputFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1398
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1399
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 1400
    .local v5, mkdirResult:Z
    if-nez v5, :cond_1

    .line 1402
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "getParentFile().mkdirs() fail"

    invoke-static {v10, v11}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .end local v5           #mkdirResult:Z
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v9

    .line 1406
    .local v9, result:Z
    if-nez v9, :cond_2

    .line 1408
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "createNewFile fail"

    invoke-static {v10, v11}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .end local v9           #result:Z
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1415
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1424
    if-eqz v4, :cond_3

    .line 1426
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1434
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 1435
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1437
    :cond_4
    :goto_1
    return-void

    .line 1417
    :catch_0
    move-exception v2

    .line 1419
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v11, "generateImage"

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1420
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1424
    if-eqz v3, :cond_5

    .line 1426
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1434
    :cond_5
    :goto_3
    const/4 v3, 0x0

    .line 1435
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1429
    :catch_1
    move-exception v2

    .line 1432
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1421
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1424
    :goto_4
    if-eqz v3, :cond_6

    .line 1426
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1434
    :cond_6
    :goto_5
    const/4 v3, 0x0

    .line 1435
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1436
    :cond_7
    throw v10

    .line 1429
    :catch_2
    move-exception v2

    .line 1432
    .restart local v2       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1429
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 1432
    .restart local v2       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1421
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1417
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static generateImage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;
        }
    .end annotation

    .prologue
    .line 1441
    .local p1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1444
    return-void

    .line 1441
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1442
    .local v0, path:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static generateThumbLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "photoLocalPath"

    .prologue
    .line 1447
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1448
    .local v0, index:I
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1454
    .local v1, indexOfDot:I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1455
    .local v2, retStr:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const-string v3, "_thumb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The file is illegal argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The file name is illegal argument:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, dot:I
    if-ltz v0, :cond_1

    .line 111
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileCapability(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "file"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The file is illegal Argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getFileCapability(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileCapability(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 3
    .parameter "file"

    .prologue
    const-wide/16 v0, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The file is illegal Argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-wide v0

    .line 155
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 9
    .parameter "filePath"

    .prologue
    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, file:Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 175
    .local v1, size:J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 178
    .local v4, subFileArray:[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 179
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 184
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getSingleFileSize(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 193
    .end local v4           #subFileArray:[Ljava/io/File;
    :goto_1
    return-wide v1

    .line 179
    .restart local v4       #subFileArray:[Ljava/io/File;
    :cond_0
    aget-object v3, v4, v5

    .line 180
    .local v3, subFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v1, v7

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 186
    .end local v3           #subFile:Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getSingleFileSize(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 190
    .end local v4           #subFileArray:[Ljava/io/File;
    :cond_2
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getSingleFileSize(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1
.end method

.method public static getLocalFileSize(Ljava/lang/String;Landroid/content/Context;)J
    .locals 6
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 1307
    const/4 v1, 0x0

    .line 1309
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1316
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    .line 1317
    .local v2, length:J
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1320
    :cond_1
    return-wide v2

    .line 1310
    .end local v2           #length:J
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 1312
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "FileHelper.java getLocalFileSize() Exception"

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getLocaldeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 791
    .line 792
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 791
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 793
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, deviceId:Ljava/lang/String;
    return-object v0
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "file"

    .prologue
    const/4 v7, 0x0

    .line 1190
    const/4 v3, 0x0

    .line 1191
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1193
    .local v2, fc:Ljava/nio/channels/FileChannel;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1194
    .local v6, md:Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1200
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 1201
    const/high16 v8, 0x8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1202
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v5, -0x1

    .line 1204
    .local v5, length:I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1205
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 1206
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 1207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 1213
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v5           #length:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1214
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #md:Ljava/security/MessageDigest;
    .local v1, ex:Ljava/io/IOException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1223
    if-eqz v2, :cond_0

    .line 1224
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1225
    const/4 v2, 0x0

    .line 1227
    :cond_0
    if-eqz v3, :cond_1

    .line 1228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1229
    const/4 v3, 0x0

    .line 1220
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v7

    .line 1212
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    .restart local v6       #md:Ljava/security/MessageDigest;
    :cond_2
    :try_start_4
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->bytesToString([B)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v7

    .line 1223
    if-eqz v2, :cond_3

    .line 1224
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1225
    const/4 v2, 0x0

    .line 1227
    :cond_3
    if-eqz v4, :cond_4

    .line 1228
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1229
    const/4 v3, 0x0

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1231
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 1232
    .restart local v1       #ex:Ljava/io/IOException;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v1           #ex:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1231
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v5           #length:I
    .end local v6           #md:Ljava/security/MessageDigest;
    .restart local v1       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1232
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1217
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1218
    .local v1, ex:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_6
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1219
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1223
    if-eqz v2, :cond_5

    .line 1224
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1225
    const/4 v2, 0x0

    .line 1227
    :cond_5
    if-eqz v3, :cond_1

    .line 1228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1229
    const/4 v3, 0x0

    goto :goto_2

    .line 1231
    :catch_4
    move-exception v1

    .line 1232
    .local v1, ex:Ljava/io/IOException;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1221
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1223
    :goto_4
    if-eqz v2, :cond_6

    .line 1224
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1225
    const/4 v2, 0x0

    .line 1227
    :cond_6
    if-eqz v3, :cond_7

    .line 1228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1229
    const/4 v3, 0x0

    .line 1235
    :cond_7
    :goto_5
    throw v7

    .line 1231
    :catch_5
    move-exception v1

    .line 1232
    .restart local v1       #ex:Ljava/io/IOException;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1221
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #md:Ljava/security/MessageDigest;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1217
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1213
    .end local v6           #md:Ljava/security/MessageDigest;
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method public static getMD5(Ljava/io/File;II)Ljava/lang/String;
    .locals 13
    .parameter "file"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v12, 0x0

    .line 1270
    const/4 v8, 0x0

    .line 1271
    .local v8, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1273
    .local v0, ch:Ljava/nio/channels/FileChannel;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 1274
    .local v11, md:Ljava/security/MessageDigest;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1275
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    sub-int v1, p2, p1

    add-int/lit8 v10, v1, 0x1

    .line 1276
    .local v10, len:I
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1277
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, p1

    int-to-long v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 1278
    .local v6, byteBuffer:Ljava/nio/MappedByteBuffer;
    invoke-virtual {v11, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 1279
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->bytesToString([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 1290
    if-eqz v0, :cond_0

    .line 1292
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1294
    :cond_0
    if-eqz v9, :cond_1

    .line 1295
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1296
    const/4 v8, 0x0

    .line 1287
    .end local v6           #byteBuffer:Ljava/nio/MappedByteBuffer;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v10           #len:I
    .end local v11           #md:Ljava/security/MessageDigest;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 1298
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v6       #byteBuffer:Ljava/nio/MappedByteBuffer;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #len:I
    .restart local v11       #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .line 1299
    .local v7, ex:Ljava/io/IOException;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1300
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v7           #ex:Ljava/io/IOException;
    :cond_1
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 1280
    .end local v6           #byteBuffer:Ljava/nio/MappedByteBuffer;
    .end local v10           #len:I
    .end local v11           #md:Ljava/security/MessageDigest;
    :catch_1
    move-exception v7

    .line 1281
    .restart local v7       #ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1290
    if-eqz v0, :cond_2

    .line 1292
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1294
    :cond_2
    if-eqz v8, :cond_3

    .line 1295
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1296
    const/4 v8, 0x0

    :cond_3
    :goto_2
    move-object v1, v12

    .line 1283
    goto :goto_0

    .line 1298
    :catch_2
    move-exception v7

    .line 1299
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1300
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1284
    .end local v7           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 1285
    .local v7, ex:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_5
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1286
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1290
    if-eqz v0, :cond_4

    .line 1292
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1294
    :cond_4
    if-eqz v8, :cond_5

    .line 1295
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1296
    const/4 v8, 0x0

    .end local v7           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_5
    :goto_4
    move-object v1, v12

    .line 1287
    goto :goto_0

    .line 1298
    .restart local v7       #ex:Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v7

    .line 1299
    .local v7, ex:Ljava/io/IOException;
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1300
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1288
    .end local v7           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1290
    :goto_5
    if-eqz v0, :cond_6

    .line 1292
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1294
    :cond_6
    if-eqz v8, :cond_7

    .line 1295
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1296
    const/4 v8, 0x0

    .line 1302
    :cond_7
    :goto_6
    throw v1

    .line 1298
    :catch_5
    move-exception v7

    .line 1299
    .restart local v7       #ex:Ljava/io/IOException;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1300
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 1288
    .end local v7           #ex:Ljava/io/IOException;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #len:I
    .restart local v11       #md:Ljava/security/MessageDigest;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1284
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1280
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static getNewName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    .line 765
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 766
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, " name is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 768
    :cond_1
    move-object v3, p1

    .line 769
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, extension:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "SSSssmmkkddMMyy"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 773
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, id:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    :cond_2
    return-object v3
.end method

.method public static getNewNameForScan(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "name"

    .prologue
    .line 798
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 799
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, " name is empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 801
    :cond_1
    move-object v4, p1

    .line 802
    .local v4, str:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, extension:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 806
    :cond_2
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getLocaldeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 807
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_3

    .line 808
    sget-object v5, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GetNewNameForScan error..id empty fk."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_3
    if-eqz v0, :cond_4

    .line 816
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 817
    .local v3, md:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 819
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 834
    .end local v3           #md:Ljava/security/MessageDigest;
    :cond_4
    :goto_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    :cond_5
    return-object v4

    .line 821
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceId MessageDigest"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 826
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 829
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceId MessageDigest"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSingleFileSize(Ljava/lang/String;)J
    .locals 3
    .parameter "filePath"

    .prologue
    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 268
    .local v1, size:J
    return-wide v1
.end method

.method public static getStorageState(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 663
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v2

    .line 667
    :cond_1
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v3, :cond_2

    .line 668
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 669
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    sput-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->mMntSvc:Landroid/os/storage/IMountService;

    .line 673
    :cond_2
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->mMntSvc:Landroid/os/storage/IMountService;

    if-eqz v3, :cond_0

    .line 677
    :try_start_0
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v3, p0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 684
    .local v1, temp:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 679
    .end local v1           #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "folderName"

    .prologue
    .line 1361
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ssmmkkddMMyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isFileExist(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 1172
    if-nez p0, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return v0

    .line 1175
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHasEnoughSpace(Landroid/content/Context;Ljava/io/File;)Z
    .locals 11
    .parameter "context"
    .parameter "srcFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    .line 466
    .local v2, fileSize:J
    const-wide/32 v0, 0x200000

    .line 468
    .local v0, EMORY_REMAINING:J
    sget-boolean v7, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v7, :cond_0

    .line 469
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DirSetting.getDir(context).getBaseDir(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 470
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-static {v7, v8}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 476
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long v5, v7, v9

    .line 478
    .local v5, storageSize:J
    sget-boolean v7, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v7, :cond_1

    .line 479
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fileSize: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v9, v2, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "storageSize: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1
    add-long v7, v2, v0

    cmp-long v7, v7, v5

    if-ltz v7, :cond_2

    .line 484
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendNoSpaceError(Landroid/content/Context;)V

    .line 486
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 489
    :cond_2
    const/4 v7, 0x1

    return v7
.end method

.method public static isMyPhotoStreamPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 1462
    const-string v0, "/Photoshare/myphoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isValidFileName(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 439
    const-string v0, "^[^\\\\/:*?<>\"|]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static localPath2DbankPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localPath"

    .prologue
    .line 1339
    const-string v1, "/Photoshare/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1340
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1341
    const-string v1, ""

    .line 1343
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static renameFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "oldFile"
    .parameter "newFileName"

    .prologue
    .line 449
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 451
    .local v0, isSuccess:Z
    return v0
.end method

.method public static resetFileName(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    .line 1324
    if-eqz p0, :cond_0

    .line 1325
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, ".tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v0, newFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 1328
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 1330
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v4, "resetFileName fail"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    .end local v0           #newFile:Ljava/io/File;
    .end local v1           #oldFile:Ljava/io/File;
    .end local v2           #result:Z
    :cond_0
    return-void
.end method

.method public static setSinglePermission(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 624
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->setSinglePermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSinglePermission(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 600
    .local v0, chmodProgress:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 602
    .local v4, shell:Ljava/lang/Runtime;
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "chmod"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "777"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    aput-object p0, v1, v5

    .line 603
    .local v1, cmds:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 617
    const/4 v0, 0x0

    .line 620
    .end local v1           #cmds:[Ljava/lang/String;
    .end local v4           #shell:Ljava/lang/Runtime;
    :cond_0
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v2

    .line 607
    .local v2, e2:Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/File;->setExecutable(Z)Z

    .line 609
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/File;->setReadable(Z)Z

    .line 610
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    if-eqz v0, :cond_0

    .line 616
    throw v0

    .line 617
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    :catchall_0
    move-exception v5

    .line 614
    if-eqz v0, :cond_1

    .line 616
    throw v0

    .line 617
    const/4 v0, 0x0

    .line 619
    :cond_1
    throw v5
.end method

.method public static writeFile(Ljava/io/RandomAccessFile;[B)I
    .locals 5
    .parameter "file"
    .parameter "io"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;,
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1043
    const/4 v1, 0x0

    .line 1045
    .local v1, length:I
    if-eqz p1, :cond_0

    .line 1046
    if-eqz p0, :cond_1

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1049
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    array-length v1, p1

    :cond_0
    move v2, v1

    .line 1062
    :cond_1
    :goto_0
    return v2

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1052
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static writeFileNIO(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "file"
    .parameter "io"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;,
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1068
    const/4 v2, 0x0

    .line 1069
    .local v2, length:I
    const/4 v1, 0x0

    .line 1071
    .local v1, fc:Ljava/nio/channels/FileChannel;
    if-eqz p1, :cond_0

    .line 1073
    if-eqz p0, :cond_1

    .line 1077
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1078
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1101
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1109
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v2, v3

    :cond_0
    move v3, v2

    .line 1117
    :cond_1
    :goto_2
    return v3

    .line 1080
    :catch_0
    move-exception v0

    .line 1082
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->TAG:Ljava/lang/String;

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1091
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1101
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1103
    :catch_1
    move-exception v0

    .line 1106
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1093
    :catch_2
    move-exception v0

    .line 1096
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1088
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1091
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1101
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1108
    :goto_5
    throw v3

    .line 1093
    :catch_3
    move-exception v0

    .line 1096
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1103
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1106
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1093
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1096
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1103
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1106
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
