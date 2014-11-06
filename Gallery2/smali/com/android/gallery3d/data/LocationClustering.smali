.class Lcom/android/gallery3d/data/LocationClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocationClustering$1;,
        Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;,
        Lcom/android/gallery3d/data/LocationClustering$SmallItem;,
        Lcom/android/gallery3d/data/LocationClustering$LocationCluster;,
        Lcom/android/gallery3d/data/LocationClustering$Point;,
        Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;
    }
.end annotation


# static fields
.field private static final LocationClusterLOCK:Ljava/lang/Object; = null

.field private static final MAX_DISTANCE_BETWEEN_TWO_POINTS:D = 3000.0

.field private static final MAX_GROUPS:I = 0x14

.field private static final MAX_ITERATIONS:I = 0x1e

.field private static final MIN_GROUPS:I = 0x1

.field private static final STOP_CHANGE_RATIO:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "LocationClustering"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$LocationCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstDivide:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;

.field private mLoading:Z

.field private mLocationDivideTask:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

.field private mNeedReload:Z

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "context"
    .parameter "application"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z

    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/gallery3d/data/LocationClustering;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/data/LocationClustering;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/data/LocationClustering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/data/LocationClustering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocationClustering;->notifyDivideComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/LocationClustering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/LocationClustering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/LocationClustering;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/LocationClustering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/data/LocationClustering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/LocationClustering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocationClustering;->notifyContentChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/data/LocationClustering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(DDLcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/LocationClustering;->generateName(DDLcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateName(DDLcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "geocoder"

    .prologue
    .line 367
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/gallery3d/util/ReverseGeocoder;->getAddress(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 34
    .parameter "points"
    .parameter "bestK"

    .prologue
    .line 417
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    .line 420
    .local v27, n:I
    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 421
    .local v26, minK:I
    const/16 v2, 0x14

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 423
    .local v25, maxK:I
    move/from16 v0, v25

    new-array v14, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 424
    .local v14, center:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v18, v0

    .line 425
    .local v18, groupSum:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 426
    .local v17, groupCount:[I
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 428
    .local v19, grouping:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 429
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    .line 430
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    .line 428
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 435
    :cond_0
    const v13, 0x7f7fffff

    .line 437
    .local v13, bestScore:F
    move/from16 v0, v27

    new-array v11, v0, [I

    .line 439
    .local v11, bestGrouping:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 441
    const/16 v24, 0x0

    .line 442
    .local v24, lastDistance:F
    const/16 v33, 0x0

    .line 444
    .local v33, totalDistance:F
    move/from16 v23, v26

    .local v23, k:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 446
    div-int v15, v27, v23

    .line 447
    .local v15, delta:I
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 448
    mul-int v2, v20, v15

    aget-object v28, p0, v2

    .line 449
    .local v28, p:Lcom/android/gallery3d/data/LocationClustering$Point;
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 450
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 447
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 453
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_1
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_3
    const/16 v2, 0x1e

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 455
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 456
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 457
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 458
    const/4 v2, 0x0

    aput v2, v17, v20

    .line 455
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 460
    :cond_2
    const/16 v33, 0x0

    .line 462
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 463
    aget-object v28, p0, v20

    .line 464
    .restart local v28       #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    const v10, 0x7f7fffff

    .line 465
    .local v10, bestDistance:F
    const/4 v12, 0x0

    .line 466
    .local v12, bestIndex:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 467
    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 472
    .local v16, distance:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 473
    const/16 v16, 0x0

    .line 475
    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    .line 476
    move/from16 v10, v16

    .line 477
    move/from16 v12, v22

    .line 466
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 480
    .end local v16           #distance:F
    :cond_5
    aput v12, v19, v20

    .line 481
    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    .line 482
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 483
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 484
    add-float v33, v33, v10

    .line 462
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 488
    .end local v10           #bestDistance:F
    .end local v12           #bestIndex:I
    .end local v22           #j:I
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 489
    aget v2, v17, v20

    if-lez v2, :cond_7

    .line 490
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 491
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 488
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 495
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 503
    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 504
    .local v31, reassign:[I
    const/16 v29, 0x0

    .line 505
    .local v29, realK:I
    const/16 v20, 0x0

    move/from16 v30, v29

    .end local v29           #realK:I
    .local v30, realK:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 506
    aget v2, v17, v20

    if-lez v2, :cond_f

    .line 507
    add-int/lit8 v29, v30, 0x1

    .end local v30           #realK:I
    .restart local v29       #realK:I
    aput v30, v31, v20

    .line 505
    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    .end local v29           #realK:I
    .restart local v30       #realK:I
    goto :goto_8

    .line 499
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    :cond_a
    move/from16 v24, v33

    .line 453
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 512
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    :cond_b
    move/from16 v0, v30

    int-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    mul-float v32, v33, v2

    .line 514
    .local v32, score:F
    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    .line 515
    move/from16 v13, v32

    .line 516
    const/4 v2, 0x0

    aput v30, p1, v2

    .line 517
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 518
    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    .line 517
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 520
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    .line 525
    .end local v15           #delta:I
    .end local v21           #iter:I
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    .end local v32           #score:F
    :cond_d
    return-object v11

    .line 444
    .restart local v15       #delta:I
    .restart local v21       #iter:I
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    .restart local v32       #score:F
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .end local v32           #score:F
    :cond_f
    move/from16 v29, v30

    .end local v30           #realK:I
    .restart local v29       #realK:I
    goto :goto_9
.end method

.method private notifyContentChanged()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mListener:Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;

    invoke-interface {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;->onLocationInfoChange()V

    .line 71
    return-void
.end method

.method private notifyDivideComplete()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mListener:Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;

    invoke-interface {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;->onUpdateAll()V

    .line 75
    return-void
.end method


# virtual methods
.method public addLocationInfoListener(Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mListener:Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;

    .line 78
    return-void
.end method

.method public deletePath(Ljava/lang/String;Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "name"
    .parameter "path"

    .prologue
    .line 539
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 540
    sget-object v5, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 541
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 542
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    .line 543
    .local v3, location:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 544
    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v1

    .line 545
    .local v1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 546
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    :cond_0
    monitor-exit v5

    .line 558
    .end local v0           #i:I
    .end local v1           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v2           #j:I
    .end local v3           #location:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    :cond_1
    :goto_2
    return-void

    .line 545
    .restart local v0       #i:I
    .restart local v1       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .restart local v2       #j:I
    .restart local v3       #location:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 541
    .end local v1           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v3           #location:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getCluster(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    sget-object v5, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 387
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v1

    .line 388
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 393
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0           #i:I
    .end local v2           #n:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 395
    .restart local v0       #i:I
    .restart local v2       #n:I
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_0
    return-object v3
.end method

.method public getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v1, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-object v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 406
    sget-object v1, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNoLocationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 2

    .prologue
    .line 374
    sget-object v1, Lcom/android/gallery3d/data/LocationClustering;->LocationClusterLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z

    return v0
.end method

.method public removeLocationInfoListener()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mListener:Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;

    .line 82
    return-void
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "baseSet"

    .prologue
    const/4 v1, 0x1

    .line 355
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z

    if-ne v1, v0, :cond_0

    .line 356
    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLocationDivideTask:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLocationDivideTask:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->terminate()V

    .line 359
    :cond_1
    new-instance v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;-><init>(Lcom/android/gallery3d/data/LocationClustering;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLocationDivideTask:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mLocationDivideTask:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->start()V

    .line 361
    iput-boolean v1, p0, Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z

    goto :goto_0
.end method

.method public setFirstDivide(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z

    .line 400
    return-void
.end method
