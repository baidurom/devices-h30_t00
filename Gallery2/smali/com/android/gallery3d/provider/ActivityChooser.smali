.class public Lcom/android/gallery3d/provider/ActivityChooser;
.super Landroid/database/DataSetObservable;
.source "ActivityChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/provider/ActivityChooser$1;,
        Lcom/android/gallery3d/provider/ActivityChooser$PersistHistoryAsyncTask;,
        Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;,
        Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;,
        Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;,
        Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;,
        Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;,
        Lcom/android/gallery3d/provider/ActivityChooser$ActivityChooserClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SUPORT_INTENT_TYPE_ALL:I = 0x6

.field public static final SUPORT_INTENT_TYPE_ALL_STRING:Ljava/lang/String; = "*/*"

.field public static final SUPORT_INTENT_TYPE_IMAGE:I = 0x2

.field public static final SUPORT_INTENT_TYPE_IMAGE_STRING:Ljava/lang/String; = "image/*"

.field public static final SUPORT_INTENT_TYPE_UNKNOW:I = 0x1

.field public static final SUPORT_INTENT_TYPE_VIDEO:I = 0x4

.field public static final SUPORT_INTENT_TYPE_VIDEO_STRING:Ljava/lang/String; = "video/*"

.field public static final SUPPORT_INTENT_ACTION_SEND:I = 0x1

.field public static final SUPPORT_INTENT_ACTION_SEND_MULTIPLE:I = 0x2

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/provider/ActivityChooser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;

.field private mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

.field private final mAllActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiShareMode:Z

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z

.field private mReloadAllActivities:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/gallery3d/provider/ActivityChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/provider/ActivityChooser;->LOG_TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/provider/ActivityChooser;->sRegistryLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/provider/ActivityChooser;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mAllActivities:Ljava/util/List;

    .line 112
    iput-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mMultiShareMode:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    .line 124
    new-instance v0, Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;-><init>(Lcom/android/gallery3d/provider/ActivityChooser$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

    .line 126
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryMaxSize:I

    .line 128
    iput-boolean v3, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mCanReadHistoricalData:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReadShareHistoryCalled:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadActivities:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadAllActivities:Z

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/provider/ActivityChooser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/gallery3d/provider/ActivityChooser;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/provider/ActivityChooser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/provider/ActivityChooser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mCanReadHistoricalData:Z

    return p1
.end method

.method private addHisoricalRecord(Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;)Z
    .locals 2
    .parameter "historicalRecord"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 457
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    .line 459
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 460
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->persistHistoricalDataIfNeeded()V

    .line 461
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->sortActivitiesIfNeeded()Z

    .line 462
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->notifyChanged()V

    .line 464
    :cond_0
    return v0
.end method

.method private ensureConsistentState()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mMultiShareMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->loadAllActivitiesIfNeeded()Z

    move-result v0

    .line 358
    .local v0, stateChanged:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 359
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->sortActivitiesIfNeeded()Z

    .line 362
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->notifyChanged()V

    .line 364
    :cond_0
    return-void

    .line 357
    .end local v0           #stateChanged:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->loadActivitiesIfNeeded()Z

    move-result v0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/gallery3d/provider/ActivityChooser;
    .locals 3
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    .line 141
    sget-object v2, Lcom/android/gallery3d/provider/ActivityChooser;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/provider/ActivityChooser;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser;

    .line 143
    .local v0, dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/gallery3d/provider/ActivityChooser;

    .end local v0           #dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/provider/ActivityChooser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .restart local v0       #dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    sget-object v1, Lcom/android/gallery3d/provider/ActivityChooser;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    monitor-exit v2

    return-object v0

    .line 148
    .end local v0           #dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getActionFronString(Ljava/lang/String;)I
    .locals 1
    .parameter "action"

    .prologue
    .line 433
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    .line 434
    :cond_0
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 439
    const-string v0, "*/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 442
    :goto_0
    return v0

    .line 440
    :cond_0
    const-string v0, "image/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 441
    :cond_1
    const-string v0, "video/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 442
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadActivities:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 378
    iput-boolean v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadActivities:Z

    .line 379
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/provider/ActivityChooser;->loadActivityInternal(Ljava/util/List;Ljava/util/List;)V

    .line 383
    const/4 v1, 0x1

    .line 385
    .end local v0           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_0
    return v1
.end method

.method private loadActivityInternal(Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v9, Ljava/util/HashMap;

    const/16 v13, 0xa

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 400
    .local v9, intentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 401
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, dataType:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, action:Ljava/lang/String;
    const-string v13, "*/*"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 404
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "image/*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v15, "image/*"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "video/*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v15, "video/*"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 409
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 412
    .end local v1           #action:Ljava/lang/String;
    .end local v5           #dataType:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v2, activitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 415
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 416
    .local v12, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 417
    .local v11, resolveInfoCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_2

    .line 418
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 419
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 420
    .local v3, activityKey:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 421
    .local v4, ari:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    if-nez v4, :cond_3

    .line 422
    new-instance v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .end local v4           #ari:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    invoke-direct {v4, v10}, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 423
    .restart local v4       #ari:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_3
    iget v13, v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->action:I

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/provider/ActivityChooser;->getActionFronString(Ljava/lang/String;)I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->action:I

    .line 427
    iget v13, v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/gallery3d/provider/ActivityChooser;->getTypeFromString(Ljava/lang/String;)I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    .line 417
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 430
    .end local v3           #activityKey:Ljava/lang/String;
    .end local v4           #ari:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v6           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v11           #resolveInfoCount:I
    .end local v12           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    return-void
.end method

.method private loadAllActivitiesIfNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 389
    iget-boolean v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadAllActivities:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadAllActivities:Z

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mAllActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mAllActivities:Ljava/util/List;

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/provider/ActivityChooser;->loadActivityInternal(Ljava/util/List;Ljava/util/List;)V

    .line 393
    const/4 v0, 0x1

    .line 395
    :cond_0
    return v0
.end method

.method private mActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mMultiShareMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mAllActivities:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities:Ljava/util/List;

    goto :goto_0
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_2

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iput-boolean v5, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lcom/android/gallery3d/provider/ActivityChooser$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/provider/ActivityChooser$PersistHistoryAsyncTask;-><init>(Lcom/android/gallery3d/provider/ActivityChooser;Lcom/android/gallery3d/provider/ActivityChooser$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/provider/ActivityChooser$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 4

    .prologue
    .line 468
    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 469
    .local v1, pruneCount:I
    if-gtz v1, :cond_1

    .line 479
    :cond_0
    return-void

    .line 472
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 446
    iget-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mCanReadHistoricalData:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    iput-boolean v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mCanReadHistoricalData:Z

    .line 448
    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReadShareHistoryCalled:Z

    .line 449
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->readHistoricalDataImpl()V

    .line 452
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private readHistoricalDataImpl()V
    .locals 17

    .prologue
    .line 630
    const/4 v2, 0x0

    .line 632
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 640
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 641
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v7, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 643
    const/4 v11, 0x0

    .line 644
    .local v11, type:I
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_1

    const/4 v14, 0x2

    if-eq v11, v14, :cond_1

    .line 645
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_0

    .line 633
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #type:I
    :catch_0
    move-exception v3

    .line 696
    :cond_0
    :goto_1
    return-void

    .line 648
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #type:I
    :cond_1
    const-string v14, "historical-records"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 649
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Share records file does not start with historical-records tag."

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 683
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #type:I
    :catch_1
    move-exception v13

    .line 684
    .local v13, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v14, Lcom/android/gallery3d/provider/ActivityChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error reading historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 688
    if-eqz v2, :cond_0

    .line 690
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 691
    :catch_2
    move-exception v14

    goto :goto_1

    .line 653
    .end local v13           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #type:I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    .line 654
    .local v4, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 657
    :cond_3
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v11

    .line 658
    const/4 v14, 0x1

    if-ne v11, v14, :cond_4

    .line 688
    if-eqz v2, :cond_0

    .line 690
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 691
    :catch_3
    move-exception v14

    goto :goto_1

    .line 661
    :cond_4
    const/4 v14, 0x3

    if-eq v11, v14, :cond_3

    const/4 v14, 0x4

    if-eq v11, v14, :cond_3

    .line 664
    :try_start_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 665
    .local v6, nodeName:Ljava/lang/String;
    const-string v14, "historical-record"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 666
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "Share records file not well-formed."

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 685
    .end local v4           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;>;"
    .end local v6           #nodeName:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #type:I
    :catch_4
    move-exception v5

    .line 686
    .local v5, ioe:Ljava/io/IOException;
    :try_start_7
    sget-object v14, Lcom/android/gallery3d/provider/ActivityChooser;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error reading historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 688
    if-eqz v2, :cond_0

    .line 690
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 691
    :catch_5
    move-exception v14

    goto/16 :goto_1

    .line 669
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v4       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;>;"
    .restart local v6       #nodeName:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #type:I
    :cond_5
    const/4 v14, 0x0

    :try_start_9
    const-string v15, "activity"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, activity:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "time"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 671
    .local v9, time:J
    const/4 v14, 0x0

    const-string v15, "weight"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 672
    .local v12, weight:F
    new-instance v8, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    invoke-direct {v8, v1, v9, v10, v12}, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 673
    .local v8, readRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 688
    .end local v1           #activity:Ljava/lang/String;
    .end local v4           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;>;"
    .end local v6           #nodeName:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #readRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    .end local v9           #time:J
    .end local v11           #type:I
    .end local v12           #weight:F
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_6

    .line 690
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 693
    :cond_6
    :goto_3
    throw v14

    .line 691
    :catch_6
    move-exception v15

    goto :goto_3
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 371
    const/4 v1, 0x1

    .line 373
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public chooseActivity(I)Landroid/content/Intent;
    .locals 10
    .parameter "index"

    .prologue
    .line 218
    iget-object v7, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 221
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 223
    .local v2, chosenActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v3, chosenName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    iget-object v6, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivityChoserModelPolicy:Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;

    if-eqz v6, :cond_0

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 232
    .local v1, choiceIntentCopy:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivityChoserModelPolicy:Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;->onChooseActivity(Lcom/android/gallery3d/provider/ActivityChooser;Landroid/content/Intent;)Z

    move-result v4

    .line 233
    .local v4, handled:Z
    if-eqz v4, :cond_0

    .line 234
    const/4 v0, 0x0

    monitor-exit v7

    .line 242
    .end local v0           #choiceIntent:Landroid/content/Intent;
    .end local v1           #choiceIntentCopy:Landroid/content/Intent;
    .end local v4           #handled:Z
    :goto_0
    return-object v0

    .line 238
    .restart local v0       #choiceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v5, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f80

    invoke-direct {v5, v3, v8, v9, v6}, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 240
    .local v5, historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    invoke-direct {p0, v5}, Lcom/android/gallery3d/provider/ActivityChooser;->addHisoricalRecord(Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;)Z

    .line 242
    monitor-exit v7

    goto :goto_0

    .line 243
    .end local v0           #choiceIntent:Landroid/content/Intent;
    .end local v2           #chosenActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v3           #chosenName:Landroid/content/ComponentName;
    .end local v5           #historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public chooseActivityInfo(I)Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .locals 7
    .parameter "index"

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 250
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 252
    .local v0, chosenActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v1, chosenName:Landroid/content/ComponentName;
    new-instance v2, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/high16 v3, 0x3f80

    invoke-direct {v2, v1, v5, v6, v3}, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 257
    .local v2, historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/provider/ActivityChooser;->addHisoricalRecord(Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;)Z

    .line 259
    monitor-exit v4

    return-object v0

    .line 260
    .end local v0           #chosenActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v1           #chosenName:Landroid/content/ComponentName;
    .end local v2           #historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public deleteAllVideoOnlyActivity()V
    .locals 4

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v1

    .line 776
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 777
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    iget v2, v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 778
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 776
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 780
    :cond_1
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 198
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    iget-object v0, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 191
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .parameter "activity"

    .prologue
    .line 203
    iget-object v5, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 207
    .local v1, activityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 208
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 209
    .local v2, currentActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    iget-object v4, v2, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 210
    monitor-exit v5

    .line 213
    .end local v2           #currentActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v3           #i:I
    :goto_1
    return v3

    .line 207
    .restart local v2       #currentActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    .end local v2           #currentActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    :cond_1
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1

    .line 214
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    .end local v1           #activityCount:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 273
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    iget-object v1, v1, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v2

    .line 277
    :goto_0
    return-object v1

    .line 276
    :cond_0
    monitor-exit v2

    .line 277
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetIntents()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    return-void
.end method

.method public setActivitySorter(Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;)V
    .locals 2
    .parameter "activitySorter"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

    if-ne v0, p1, :cond_0

    .line 321
    monitor-exit v1

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivitySorter:Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;

    .line 324
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->notifyChanged()V

    .line 327
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 281
    iget-object v7, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->mActivities()Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 285
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 286
    .local v3, newDefaultActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 289
    .local v4, oldDefaultActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    if-eqz v4, :cond_0

    .line 292
    iget v6, v4, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    iget v8, v3, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    sub-float/2addr v6, v8

    const/high16 v8, 0x40a0

    add-float v5, v6, v8

    .line 297
    .local v5, weight:F
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v1, defaultName:Landroid/content/ComponentName;
    new-instance v2, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v1, v8, v9, v5}, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 300
    .local v2, historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/provider/ActivityChooser;->addHisoricalRecord(Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;)Z

    .line 301
    monitor-exit v7

    .line 302
    return-void

    .line 294
    .end local v1           #defaultName:Landroid/content/ComponentName;
    .end local v2           #historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    .end local v5           #weight:F
    :cond_0
    const/high16 v5, 0x3f80

    .restart local v5       #weight:F
    goto :goto_0

    .line 301
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    .end local v3           #newDefaultActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v4           #oldDefaultActivity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v5           #weight:F
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .parameter "historyMaxSize"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    .line 333
    monitor-exit v1

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mHistoryMaxSize:I

    .line 336
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 337
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->notifyChanged()V

    .line 340
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 164
    monitor-exit v1

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mIntent:Landroid/content/Intent;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mMultiShareMode:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadActivities:Z

    .line 169
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 170
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnChooseActivityListener(Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mActivityChoserModelPolicy:Lcom/android/gallery3d/provider/ActivityChooser$OnChooseActivityListener;

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShareAllActivitiesMode()V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mMultiShareMode:Z

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/provider/ActivityChooser;->mReloadAllActivities:Z

    .line 766
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser;->ensureConsistentState()V

    .line 767
    monitor-exit v1

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
