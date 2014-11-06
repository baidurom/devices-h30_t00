.class public Lcom/android/gallery3d/data/FaceInfoProcess;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;,
        Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;,
        Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;,
        Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;,
        Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;,
        Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;
    }
.end annotation


# static fields
.field private static final IMAGE_TABLE_URI:Landroid/net/Uri; = null

.field private static final MAXREQQUEUE:I = 0x14

.field private static final SELECTION_IMAGE:Ljava/lang/String; = "mime_type IN( \'image/jpeg\',\'image/png\') AND face_thumb_magic IS NULL AND bucket_id NOT IN ( SELECT bucket_id FROM FILES WHERE title = \'.hidden\' )"

.field private static final TAG:Ljava/lang/String; = "FaceInfoProcess"

.field private static mBFaceInfoChange:Z

.field private static final mHander:Landroid/os/Handler;

.field private static mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mReloadFlag:Z

.field private static mRequestQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;",
            ">;"
        }
    .end annotation
.end field

.field private static mScanListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

.field private static final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 36
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->IMAGE_TABLE_URI:Landroid/net/Uri;

    .line 42
    sput-boolean v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mBFaceInfoChange:Z

    .line 43
    sput-boolean v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mReloadFlag:Z

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    .line 305
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    .line 330
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "faceinfo process thread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mThread:Landroid/os/HandlerThread;

    .line 331
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 332
    new-instance v0, Lcom/android/gallery3d/data/FaceInfoProcess$1;

    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/FaceInfoProcess$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mHander:Landroid/os/Handler;

    .line 348
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess;->getAllImageNotScan(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanFinish()V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceInfoProcess;->notifyContentChanged(I)V

    return-void
.end method

.method static synthetic access$500(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanBegin(I)V

    return-void
.end method

.method static synthetic access$600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanProgress(I)V

    return-void
.end method

.method static synthetic access$700([Lcom/android/gallery3d/data/FaceInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess;->addReqCommand([Lcom/android/gallery3d/data/FaceInfo;I)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/PriorityQueue;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public static addFaceInfoListener(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 54
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private static addReqCommand([Lcom/android/gallery3d/data/FaceInfo;I)V
    .locals 6
    .parameter "faceInfo"
    .parameter "imageId"

    .prologue
    .line 392
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v4, 0x1

    .line 395
    .local v4, untagged:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/android/gallery3d/data/FaceInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 396
    .local v1, face:Lcom/android/gallery3d/data/FaceInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v5

    if-lez v5, :cond_3

    .line 397
    const/4 v4, 0x0

    .line 401
    .end local v1           #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_2
    if-eqz v4, :cond_4

    .line 402
    const/4 v5, 0x0

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->addReq(II)V
    invoke-static {v5, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$900(II)V

    goto :goto_0

    .line 395
    .restart local v1       #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .end local v1           #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_4
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 405
    .restart local v1       #face:Lcom/android/gallery3d/data/FaceInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v5

    if-gtz v5, :cond_5

    .line 404
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 407
    :cond_5
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v5

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->addReq(II)V
    invoke-static {v5, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$900(II)V

    goto :goto_3
.end method

.method public static addScanListener(Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 84
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    monitor-exit v1

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static attachContact(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/gallery3d/data/FaceInfo;)V
    .locals 11
    .parameter "resolver"
    .parameter "contactUri"
    .parameter "faceInfo"

    .prologue
    .line 441
    const-string v6, "FaceInfoProcess"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attachContact Uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {p0}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/data/ContactManage;->getContactInfo(Landroid/net/Uri;)Lcom/android/gallery3d/data/ContactManage$ContactInfo;

    move-result-object v2

    .line 443
    .local v2, contactInfo:Lcom/android/gallery3d/data/ContactManage$ContactInfo;
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 445
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    iget v7, v2, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mContactId:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/PersonManage;->getPeronIdByContactId(I)I

    move-result v0

    .line 446
    .local v0, IdInPerson:I
    if-gtz v0, :cond_0

    .line 447
    invoke-static {p0}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    iget v7, v2, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mContactId:I

    iget-object v8, v2, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mSortKey:Ljava/lang/String;

    iget-boolean v10, v2, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mIsPrivate:Z

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/gallery3d/data/PersonManage;->insert(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 451
    :cond_0
    const/4 v4, 0x0

    .line 452
    .local v4, moveAllSimilar:Z
    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v5

    .line 453
    .local v5, personId:I
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/gallery3d/data/FaceManage;->anotherFaceAttached(II)Z

    move-result v1

    .line 454
    .local v1, attached:Z
    if-nez v1, :cond_2

    .line 456
    invoke-static {p0}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ImageFaceInfoManage;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->updateSimilarPerson(II)V

    .line 457
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/gallery3d/data/FaceManage;->updateSimilar1(II)V

    .line 458
    invoke-static {p0}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/PersonManage;->getContactId(I)I

    move-result v6

    if-gtz v6, :cond_1

    .line 459
    invoke-static {p0}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/data/PersonManage;->delete(I)V

    .line 461
    :cond_1
    const/4 v4, 0x1

    .line 463
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 464
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->mergeReq(II)V
    invoke-static {v5, v0}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$1100(II)V

    .line 468
    :goto_0
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lcom/android/gallery3d/data/FaceManage;->attachPerson(II)V

    .line 469
    invoke-virtual {p2, v0}, Lcom/android/gallery3d/data/FaceInfo;->updatePersonId(I)V

    .line 470
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/gallery3d/data/FaceInfo;->updateAttached(Z)V

    .line 471
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V

    .line 477
    .end local v0           #IdInPerson:I
    .end local v1           #attached:Z
    .end local v4           #moveAllSimilar:Z
    .end local v5           #personId:I
    :cond_3
    :goto_1
    return-void

    .line 466
    .restart local v0       #IdInPerson:I
    .restart local v1       #attached:Z
    .restart local v4       #moveAllSimilar:Z
    .restart local v5       #personId:I
    :cond_4
    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getImageId()I

    move-result v6

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->moveReq(III)V
    invoke-static {v5, v0, v6}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$1000(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .end local v0           #IdInPerson:I
    .end local v1           #attached:Z
    .end local v4           #moveAllSimilar:Z
    .end local v5           #personId:I
    :catch_0
    move-exception v3

    .line 473
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "FaceInfoProcess"

    const-string v7, "attachContact Exception"

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 474
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    throw v6
.end method

.method public static attachSimilarPerson(Landroid/content/ContentResolver;ILcom/android/gallery3d/data/FaceInfo;)V
    .locals 5
    .parameter "resolver"
    .parameter "similarIndex"
    .parameter "faceInfo"

    .prologue
    .line 427
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/FaceInfo;->getSimilarPersonIds(Landroid/content/ContentResolver;)[I

    move-result-object v1

    .line 428
    .local v1, similarPersons:[I
    array-length v2, v1

    if-lt p1, v2, :cond_0

    .line 438
    .end local v1           #similarPersons:[I
    :goto_0
    return-void

    .line 430
    .restart local v1       #similarPersons:[I
    :cond_0
    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v2

    aget v3, v1, p1

    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getImageId()I

    move-result v4

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->moveReq(III)V
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$1000(III)V

    .line 431
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v3

    aget v4, v1, p1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/FaceManage;->attachPerson(II)V

    .line 432
    aget v2, v1, p1

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/data/FaceInfo;->updatePersonId(I)V

    .line 433
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/data/FaceInfo;->updateAttached(Z)V

    .line 434
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1           #similarPersons:[I
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FaceInfoProcess"

    const-string v3, "attachSimilarPerson Exception"

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dettachContact(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/FaceInfo;)V
    .locals 4
    .parameter "resolver"
    .parameter "faceInfo"

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/FaceInfo;->getImageId()I

    move-result v3

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->moveReq(III)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$1000(III)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/data/FaceInfo;->updatePersonId(I)V

    .line 416
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/data/FaceInfo;->updateAttached(Z)V

    .line 417
    invoke-static {p0}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/FaceManage;->dettachPerson(I)V

    .line 418
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FaceInfoProcess"

    const-string v2, "dettachContact Exception"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAllImageNotScan(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)[I
    .locals 14
    .parameter "resolver"
    .parameter "app"

    .prologue
    const/4 v13, 0x0

    .line 361
    const/4 v6, 0x0

    .line 363
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const-string v3, "mime_type IN( \'image/jpeg\',\'image/png\') AND face_thumb_magic IS NULL AND bucket_id NOT IN ( SELECT bucket_id FROM FILES WHERE title = \'.hidden\' )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 365
    :cond_0
    const-string v0, "FaceInfoProcess"

    const-string v1, "getAllImageNotScan cursor is null"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v13

    .line 370
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 371
    .local v11, queryResultCount:I
    const/4 v9, 0x0

    .line 372
    .local v9, needScanCount:I
    new-array v12, v11, [I

    .line 373
    .local v12, tmpImageIds:[I
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system_hidden_folder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .local v8, hiddenPref:Landroid/content/SharedPreferences;
    move v10, v9

    .line 374
    .end local v9           #needScanCount:I
    .local v10, needScanCount:I
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/gallery3d/data/FaceInfoProcess;->isHiddenSystemFile(Ljava/lang/String;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    add-int/lit8 v9, v10, 0x1

    .end local v10           #needScanCount:I
    .restart local v9       #needScanCount:I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v10

    move v10, v9

    .end local v9           #needScanCount:I
    .restart local v10       #needScanCount:I
    goto :goto_1

    .line 379
    :cond_4
    const-string v0, "FaceInfoProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllImageNotScan nImageNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-lez v10, :cond_6

    const/4 v0, 0x0

    invoke-static {v12, v0, v10}, Ljava/util/Arrays;->copyOfRange([III)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 386
    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v13, v0

    goto :goto_0

    :cond_6
    move-object v0, v13

    .line 380
    goto :goto_2

    .line 382
    .end local v8           #hiddenPref:Landroid/content/SharedPreferences;
    .end local v10           #needScanCount:I
    .end local v11           #queryResultCount:I
    .end local v12           #tmpImageIds:[I
    :catch_0
    move-exception v7

    .line 383
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FaceInfoProcess"

    const-string v1, "getAllImageNotScan Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static getFaceInfosAsync(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/LocalImage;)V
    .locals 6
    .parameter "resolver"
    .parameter "image"

    .prologue
    .line 480
    sget-object v4, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    monitor-enter v4

    .line 482
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_0

    .line 483
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 485
    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;-><init>(Landroid/content/ContentResolver;Lcom/android/gallery3d/data/LocalImage;)V

    .line 486
    .local v1, req:Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mHander:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #req:Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "FaceInfoProcess"

    invoke-static {v3, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 494
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 492
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getFaceReqNum()I
    .locals 1

    .prologue
    .line 220
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->getNum()I
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$100()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getReloadFlag()Z
    .locals 2

    .prologue
    .line 143
    const-class v0, Lcom/android/gallery3d/data/FaceInfoProcess;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mReloadFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isFaceInfoChange()Z
    .locals 2

    .prologue
    .line 135
    const-class v0, Lcom/android/gallery3d/data/FaceInfoProcess;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mBFaceInfoChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isHiddenSystemFile(Ljava/lang/String;Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "filePath"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 353
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, bucketPath:Ljava/lang/String;
    const-string v3, "/system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 356
    .end local v0           #bucketPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private static notifyContentChanged(I)V
    .locals 3
    .parameter "imageId"

    .prologue
    .line 68
    sget-object v2, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;

    .line 69
    .local v1, listener:Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;
    invoke-interface {v1, p0}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;->onFaceInfoGet(I)V

    goto :goto_0

    .line 71
    .end local v1           #listener:Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;
    :cond_0
    return-void
.end method

.method private static notifyScanBegin(I)V
    .locals 5
    .parameter "num"

    .prologue
    .line 102
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v2, tmpListenerKeySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;>;"
    sget-object v4, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 104
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;

    .line 108
    .local v1, listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    invoke-interface {v1, p0}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;->onScanBegin(I)V

    goto :goto_0

    .line 105
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 110
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static notifyScanFinish()V
    .locals 5

    .prologue
    .line 113
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v2, tmpListenerKeySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;>;"
    sget-object v4, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 115
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 116
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;

    .line 119
    .local v1, listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;->onScanFinish()V

    goto :goto_0

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 121
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static notifyScanProgress(I)V
    .locals 5
    .parameter "num"

    .prologue
    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v2, tmpListenerKeySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;>;"
    sget-object v4, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 125
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;

    .line 129
    .local v1, listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    invoke-interface {v1, p0}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;->onProgress(I)V

    goto :goto_0

    .line 126
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 131
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static removeFaceInfoListener(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static removeFaceReq()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    .locals 1

    .prologue
    .line 216
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->remove()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceResultQueue;->access$000()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    move-result-object v0

    return-object v0
.end method

.method public static removeScanListener(Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 93
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    monitor-exit v1

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized setFaceInfoChage(Z)V
    .locals 2
    .parameter "bFaceInfoChange"

    .prologue
    .line 139
    const-class v0, Lcom/android/gallery3d/data/FaceInfoProcess;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/gallery3d/data/FaceInfoProcess;->mBFaceInfoChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setReloadFlag(Z)V
    .locals 2
    .parameter "bFlag"

    .prologue
    .line 147
    const-class v0, Lcom/android/gallery3d/data/FaceInfoProcess;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/gallery3d/data/FaceInfoProcess;->mReloadFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v0

    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startScan(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "App"

    .prologue
    .line 286
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    .line 287
    .local v0, faceFlag:Z
    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    if-eqz v1, :cond_1

    .line 290
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->terminate()V

    .line 291
    const/4 v1, 0x0

    sput-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    .line 293
    :cond_1
    new-instance v1, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;-><init>(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)V

    sput-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    .line 294
    sget-object v1, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->start()V

    goto :goto_0
.end method

.method public static stopScan()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "FaceInfoProcess"

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->terminate()V

    .line 301
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/data/FaceInfoProcess;->mScanTask:Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;

    .line 303
    :cond_0
    return-void
.end method
