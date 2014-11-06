.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;
.super Ljava/lang/Object;
.source "ShareFileManagerEx.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/IShareFileManager;


# static fields
.field private static final ROOT_PATH:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "ShareFileManagerEx"

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;


# instance fields
.field private final SPLIT_FLAG:Ljava/lang/String;

.field private gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

.field private gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

.field private mShareFileFilterClient:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

.field private mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

.field private mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

.field private shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

.field private transactionFlag:Z

.field private updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const-string v0, "\\\\"

    :goto_0
    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    .line 103
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    .line 104
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    .line 105
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 106
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 107
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileFilterDefault;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileFilterDefault;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 108
    return-void

    .line 43
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 2
    .parameter "shareFileFilter"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const-string v0, "\\\\"

    :goto_0
    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    .line 116
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    .line 117
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    .line 118
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 119
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 120
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 121
    return-void

    .line 43
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)V
    .locals 0
    .parameter "_shareFileBuilder"
    .parameter "_shareFileNotification"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    .line 131
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 132
    return-void
.end method

.method private addAllFileShareInDirectory(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V
    .locals 5
    .parameter "dir"

    .prologue
    .line 518
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->getAllFilePathsInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 522
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 527
    .end local v0           #i:I
    :cond_0
    return-void

    .line 523
    .restart local v0       #i:I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 524
    .local v1, mNowFile:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .locals 11
    .parameter "filePath"
    .parameter "parentDir"

    .prologue
    const/4 v9, 0x0

    .line 354
    if-nez p1, :cond_1

    move-object v3, v9

    .line 404
    :cond_0
    :goto_0
    return-object v3

    .line 358
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->isSharePathValid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v3, v9

    .line 359
    goto :goto_0

    .line 362
    :cond_2
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v8, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v3

    .line 363
    .local v3, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v3, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    if-eqz v8, :cond_3

    move-object v8, v3

    .line 364
    check-cast v8, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    sget-object v10, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 367
    :cond_3
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v8, v10, :cond_4

    move-object v3, v9

    .line 368
    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, subPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, names:[Ljava/lang/String;
    move-object v0, p2

    .line 375
    .local v0, currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v6

    if-ge v4, v8, :cond_0

    .line 376
    aget-object v5, v6, v4

    .line 377
    .local v5, name:Ljava/lang/String;
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_6

    .line 379
    invoke-direct {p0, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->doAddShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 375
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 382
    :cond_6
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 384
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_2

    .line 389
    :cond_7
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 390
    .local v2, f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v1, v2

    .line 393
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 394
    .local v1, d:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getAllOrPartFlag()I

    move-result v8

    sget-object v9, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 396
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clear()V

    .line 398
    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_2
.end method

.method private deleteShareFile(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 498
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getParentDir()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    .line 500
    .local v0, parentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getAllOrPartFlag()I

    move-result v1

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 504
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->deleteShareFile(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_0
.end method

.method private deleteShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V
    .locals 6
    .parameter "filePath"
    .parameter "parentDir"

    .prologue
    .line 472
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, subPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, names:[Ljava/lang/String;
    move-object v0, p2

    .line 476
    .local v0, currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 490
    :cond_0
    return-void

    .line 477
    :cond_1
    aget-object v2, v3, v1

    .line 478
    .local v2, name:Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 479
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 476
    .restart local v0       #currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {p0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->deleteShareFile(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_1
.end method

.method private doAddShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 5
    .parameter "fileName"
    .parameter "currentDir"

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 286
    .local v0, f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getAllOrPartFlag()I

    move-result v3

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 314
    .end local v0           #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :goto_0
    return-object v2

    .restart local v0       #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :cond_0
    move-object v2, v0

    .line 294
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, newDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {p2, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    .line 304
    move-object v2, v1

    goto :goto_0

    .line 308
    .end local v0           #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .end local v1           #newDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :cond_2
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v1       #newDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setParentDir(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 311
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    .line 312
    move-object v2, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    .line 94
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    return-object v0
.end method

.method private getShareTypeInTree(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 11
    .parameter "filePath"
    .parameter "parentDir"

    .prologue
    .line 537
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 540
    .local v6, output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->isSharePathValid(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v7, v6

    .line 588
    .end local v6           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .local v7, output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    :goto_0
    return-object v7

    .line 544
    .end local v7           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .restart local v6       #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    if-gt v9, v10, :cond_2

    :cond_1
    move-object v7, v6

    .line 545
    .end local v6           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .restart local v7       #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    goto :goto_0

    .line 548
    .end local v7           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .restart local v6       #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, subPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, names:[Ljava/lang/String;
    move-object v0, p2

    .line 552
    .local v0, currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v4

    if-lt v2, v9, :cond_4

    :cond_3
    :goto_2
    move-object v7, v6

    .line 588
    .end local v6           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .restart local v7       #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    goto :goto_0

    .line 553
    .end local v7           #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .restart local v6       #output:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    :cond_4
    aget-object v3, v4, v2

    .line 555
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 556
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 558
    .local v1, f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_7

    .line 559
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getAllOrPartFlag()I

    move-result v5

    .line 560
    .local v5, optFlag:I
    sget-object v9, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v9

    if-ne v5, v9, :cond_5

    .line 561
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    goto :goto_2

    .line 562
    :cond_5
    sget-object v9, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v9

    if-ne v5, v9, :cond_6

    .line 563
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->NO_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    goto :goto_2

    .line 564
    :cond_6
    sget-object v9, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v9

    if-ne v5, v9, :cond_3

    .line 565
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 566
    goto :goto_2

    .line 568
    .end local v5           #optFlag:I
    :cond_7
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 570
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .end local v1           #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getAllOrPartFlag()I

    move-result v9

    sget-object v10, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 572
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    .line 573
    goto :goto_2

    .line 577
    :cond_8
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 552
    .restart local v0       #currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private refreshShareList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Z
    .locals 7
    .parameter "directoryPath"

    .prologue
    .line 600
    const/4 v2, 0x0

    .line 603
    .local v2, isChangeFlag:Z
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 604
    .local v4, mapFile:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 605
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 607
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    return v2

    .line 608
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 609
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 610
    .local v1, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 612
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {p0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->deleteShareFile(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    .line 613
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->clear()V

    .line 614
    const/4 v2, 0x1

    .line 615
    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 620
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .end local v1           #file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-direct {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->refreshShareList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private removeShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V
    .locals 6
    .parameter "filePath"
    .parameter "parentDir"

    .prologue
    .line 446
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, subPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, names:[Ljava/lang/String;
    move-object v0, p2

    .line 450
    .local v0, currentDir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 462
    :cond_0
    return-void

    .line 451
    :cond_1
    aget-object v2, v3, v1

    .line 452
    .local v2, name:Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 454
    aget-object v5, v3, v1

    invoke-virtual {p0, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->doRemoveShare(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    .line 450
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {p0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->deleteShareFile(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_1
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, ret:Z
    iget-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "ShareFileManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start add Path with transaction"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-virtual {v2, p1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addPathInUpdateList(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V

    .line 144
    :cond_0
    const/4 v1, 0x1

    .line 145
    const-string v2, "ShareFileManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "end add Path with transaction"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    :goto_0
    return v1

    .line 149
    :cond_2
    const-string v2, "sharefilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5171\u4eab\u8def\u5f84out\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    const-string v2, "sharefilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5171\u4eab\u8def\u5f84in\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v0

    .line 155
    .local v0, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-virtual {v2, v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    const/4 v1, 0x1

    .line 157
    const-string v2, "sharefilter"

    const-string v3, "\u5171\u4eab\u6210\u529f\uff01"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_3
    const/4 v1, 0x0

    .line 161
    const-string v2, "sharefilter"

    const-string v3, "\u5171\u4eab\u5931\u8d25\uff01"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addShareFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, ret:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 256
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 253
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v0

    .line 254
    .local v0, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 255
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->ADD_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 254
    invoke-virtual {v3, v0, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z

    move-result v1

    move v2, v1

    .line 256
    .restart local v2       #ret:I
    goto :goto_0
.end method

.method public cancelTransaction()V
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clear()V

    .line 226
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->clear()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    .line 231
    :cond_0
    return-void
.end method

.method public cleanShareState()Z
    .locals 5

    .prologue
    .line 632
    const/4 v2, 0x0

    .line 633
    .local v2, ret:Z
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 634
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->refreshShareList()Z

    move-result v2

    .line 642
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->saveShareFileList()V

    .line 643
    return v2

    .line 636
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 638
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removeShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    goto :goto_0
.end method

.method public deleteShareFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, ret:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 268
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 265
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->deleteShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 266
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-direct {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;-><init>(Ljava/lang/String;)V

    .line 267
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 266
    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z

    move-result v0

    move v1, v0

    .line 268
    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public doRemoveShare(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 6
    .parameter "fileName"
    .parameter "currentDir"

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v2

    .line 436
    .end local v2           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .local v3, ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :goto_0
    return-object v3

    .line 413
    .end local v3           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .restart local v2       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 415
    .local v0, f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 417
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 419
    .local v1, fd:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getAllOrPartFlag()I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 422
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 423
    invoke-direct {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addAllFileShareInDirectory(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 425
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .end local v0           #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .end local v1           #fd:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .restart local v2       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :goto_1
    move-object v3, v2

    .line 436
    .end local v2           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .restart local v3       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    goto :goto_0

    .line 429
    .end local v3           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .restart local v0       #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .restart local v2       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 434
    .end local v0           #f:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public endTransaction()Z
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, ret:Z
    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clear()V

    .line 209
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 210
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 211
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;)Z

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->clear()V

    .line 214
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    .line 216
    :cond_1
    return v0
.end method

.method public getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getShareTypeInTree(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public getShareFileList()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    return-object v0
.end method

.method public getTransactionFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getShareTypeInTree(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public getmShareFileFilterClient()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterClient:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    return-object v0
.end method

.method public getmShareFileFilterDefault()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    return-object v0
.end method

.method public isSharePathValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 326
    .local v0, isValid:Z
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    if-eqz v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;->isValidSharePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterClient:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterClient:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;->isValidSharePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    const/4 v0, 0x1

    .line 335
    :goto_0
    const-string v1, "ShareFileManagerEx"

    const-string v2, "mShareFileFilterClient equals not null!!!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_1
    return v0

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :cond_2
    const-string v1, "ShareFileManagerEx"

    const-string v2, "mShareFileFilterClient equals null!!!"

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x1

    goto :goto_1

    .line 342
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public refreshShareList()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->refreshShareList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Z

    move-result v0

    return v0
.end method

.method public removePath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, ret:Z
    iget-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removeShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 175
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-virtual {v2, p1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addPathInUpdateList(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V

    .line 176
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->removeShareFile(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 182
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->shareFileBuilder:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;

    invoke-virtual {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileBuilder;->buildShareFile(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v0

    .line 183
    .local v0, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileNotification:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 184
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->REMOVE_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 183
    invoke-virtual {v2, v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setmShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 0
    .parameter "mShareFileFilterClient"

    .prologue
    .line 679
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterClient:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 680
    return-void
.end method

.method public setmShareFileFilterDefault(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 0
    .parameter "mShareFileFilterDefault"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->mShareFileFilterDefault:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 694
    return-void
.end method

.method public startTransaction()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->transactionFlag:Z

    .line 195
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clear()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->clear()V

    .line 198
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->gUpdateShareFileList:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 199
    return-void
.end method

.method public updateShareFileFromXML()Z
    .locals 6

    .prologue
    .line 652
    const/4 v3, 0x0

    .line 653
    .local v3, ret:Z
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    move-result-object v1

    .line 655
    .local v1, mXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;
    const-string v4, "dlna_share_file_configuration.xml"

    invoke-virtual {v1, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->readXML(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 656
    .local v0, filePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 657
    const/4 v3, 0x0

    .line 665
    :goto_0
    return v3

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->startTransaction()V

    .line 660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->endTransaction()Z

    move-result v3

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 661
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->addPath(Ljava/lang/String;)Z

    goto :goto_1
.end method
