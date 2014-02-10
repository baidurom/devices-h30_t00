.class public Lcom/huawei/motiondetection/MotionDetectionManager;
.super Ljava/lang/Object;
.source "MotionDetectionManager.java"


# static fields
.field private static final MOTION_SERVICE_APK_ACTION:Ljava/lang/String; = "com.huawei.action.MOTION_SETTINGS"

.field private static final SERVICE_JUDGE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MotionDetectionManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMDListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/motiondetection/MotionDetectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionAppsRegList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

.field private mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 65
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Lcom/huawei/motiondetection/MotionDetectionManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/motiondetection/MotionDetectionManager$1;-><init>(Lcom/huawei/motiondetection/MotionDetectionManager;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 99
    iput-object p1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayManager;

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 102
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    invoke-virtual {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->setRelayListener(Lcom/huawei/motiondetection/motionrelay/RelayListener;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/motiondetection/MotionDetectionManager;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/motiondetection/MotionDetectionManager;->processMotionRecoResult(ILjava/lang/Object;)V

    return-void
.end method

.method private getMotionsAppsByMotionReco(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "mType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 419
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 423
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0           #i:I
    :cond_1
    return-object v1
.end method

.method private getRecoMotionDirect(Landroid/content/Intent;)I
    .locals 2
    .parameter "recoRes"

    .prologue
    .line 465
    const-string v0, "motion_recognition_direction"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRecoMotionExtras(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .parameter "recoIntent"

    .prologue
    .line 475
    const-string v0, "motion_recognition_extras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getRecoMotionResult(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 450
    const-string v0, "motion_recognition_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRecoMotionType(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 440
    const-string v0, "motion_type_recognition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRecoResult(IIILandroid/os/Bundle;)Lcom/huawei/motiondetection/MotionRecoResult;
    .locals 1
    .parameter "pMApps"
    .parameter "pRes"
    .parameter "pDirect"
    .parameter "pExtras"

    .prologue
    .line 398
    new-instance v0, Lcom/huawei/motiondetection/MotionRecoResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/motiondetection/MotionRecoResult;-><init>(IIILandroid/os/Bundle;)V

    return-object v0
.end method

.method public static isMotionRecoApkExist(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.action.MOTION_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 85
    :cond_0
    const-string v3, "MotionRecoApkCheck"

    const-string v4, "Motion service not installed, it can not do motion recognize."

    invoke-static {v3, v4}, Lcom/huawei/motiondetection/MRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyMotionRecoResult(Landroid/content/Intent;)V
    .locals 13
    .parameter "recoIntent"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionType(Landroid/content/Intent;)I

    move-result v5

    .line 358
    .local v5, motionTypeReco:I
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionResult(Landroid/content/Intent;)I

    move-result v8

    .line 359
    .local v8, rRes:I
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionDirect(Landroid/content/Intent;)I

    move-result v6

    .line 360
    .local v6, rDirect:I
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v7

    .line 364
    .local v7, rExtras:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0, v5}, Lcom/huawei/motiondetection/MotionDetectionManager;->getMotionsAppsByMotionReco(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 366
    .local v4, maTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v10, "MotionDetectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyMotionRecoResult motionTypeReco: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  recoRes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rDirect: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v10, "MotionDetectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyMotionRecoResult mMPListenerList size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v10, "MotionDetectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyMotionRecoResult mMotionAppsRegList size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v9, 0x0

    .line 373
    .local v9, tmpMRes:Lcom/huawei/motiondetection/MotionRecoResult;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 374
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v10, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 375
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 376
    .local v3, maTyep:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10, v8, v6, v7}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoResult(IIILandroid/os/Bundle;)Lcom/huawei/motiondetection/MotionRecoResult;

    move-result-object v9

    .line 377
    iget-object v10, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/motiondetection/MotionDetectionListener;

    invoke-interface {v10, v9}, Lcom/huawei/motiondetection/MotionDetectionListener;->notifyMotionRecoResult(Lcom/huawei/motiondetection/MotionRecoResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v3           #maTyep:Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v4           #maTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #tmpMRes:Lcom/huawei/motiondetection/MotionRecoResult;
    :catch_0
    move-exception v0

    .line 381
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "MotionDetectionManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private processMotionRecoResult(ILjava/lang/Object;)V
    .locals 2
    .parameter "relayType"
    .parameter "mrecoRes"

    .prologue
    .line 333
    const-string v0, "MotionDetectionManager"

    const-string v1, "processReceiverMsg ... "

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 335
    check-cast p2, Landroid/content/Intent;

    .end local p2
    invoke-direct {p0, p2}, Lcom/huawei/motiondetection/MotionDetectionManager;->notifyMotionRecoResult(Landroid/content/Intent;)V

    .line 337
    :cond_0
    return-void
.end method

.method private resetMotionState(ILjava/lang/String;)I
    .locals 1
    .parameter "motionState"
    .parameter "motionKey"

    .prologue
    .line 315
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 316
    const/4 p1, 0x1

    .line 317
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/huawei/motiondetection/MRUtils;->setMotionEnableState(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    :cond_0
    return p1
.end method

.method private stopAllMotionReco()V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/motiondetection/MotionDetectionManager;->stopMotionAppsReco(I)Z

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public addMotionListener(Lcom/huawei/motiondetection/MotionDetectionListener;)V
    .locals 1
    .parameter "mdListener"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Lcom/huawei/motiondetection/MotionDetectionManager;->stopAllMotionReco()V

    .line 272
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 275
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->destroy()V

    .line 279
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 281
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 282
    return-void
.end method

.method public removeMotionListener(Lcom/huawei/motiondetection/MotionDetectionListener;)V
    .locals 1
    .parameter "mdListener"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    return-void
.end method

.method public startMotionAppsReco(I)Z
    .locals 11
    .parameter "motionApps"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    const-string v8, "MotionDetectionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startMotionAppsReco motionApps: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v8, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 195
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMotionAppsReco repeat motionApps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return v6

    .line 199
    :cond_0
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v4

    .line 200
    .local v4, motionTypeReco:I
    if-ne v4, p1, :cond_1

    .line 201
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMotionAppsReco motionApps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {v4}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionKeyByMotionApps(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, motionKey:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/huawei/motiondetection/MRUtils;->getMotionEnableState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, motionState:I
    invoke-direct {p0, v3, v2}, Lcom/huawei/motiondetection/MotionDetectionManager;->resetMotionState(ILjava/lang/String;)I

    move-result v3

    .line 209
    if-ne v3, v7, :cond_3

    move v0, v7

    .line 210
    .local v0, motionEnabled:Z
    :goto_1
    if-eqz v0, :cond_6

    .line 212
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionKeyByMotionApps(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, motionitemkey:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/huawei/motiondetection/MRUtils;->getMotionEnableState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_4

    move v1, v7

    .line 214
    .local v1, motionItemEnabled:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 215
    const-string v6, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMotionAppsReco motionTypeReco: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    const-string v8, "com.huawei.motionservice"

    invoke-static {v6, v8}, Lcom/huawei/motiondetection/MRUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 217
    const-string v6, "MotionDetectionManager"

    const-string v8, "startMotionAppsReco call startMotionService "

    invoke-static {v6, v8}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/huawei/motiondetection/MotionDetectionManager;->startMotionService()V

    .line 220
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 222
    :cond_2
    iget-object v6, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v6, v4}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionRecognition(I)V

    .line 223
    iget-object v6, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 225
    goto/16 :goto_0

    .end local v0           #motionEnabled:Z
    .end local v1           #motionItemEnabled:Z
    .end local v5           #motionitemkey:Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 209
    goto :goto_1

    .restart local v0       #motionEnabled:Z
    .restart local v5       #motionitemkey:Ljava/lang/String;
    :cond_4
    move v1, v6

    .line 213
    goto :goto_2

    .line 227
    .restart local v1       #motionItemEnabled:Z
    :cond_5
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMotionAppsReco motionApps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v1           #motionItemEnabled:Z
    .end local v5           #motionitemkey:Ljava/lang/String;
    :cond_6
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMotionAppsReco motionTypeReco: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startMotionRecoTutorial(I)V
    .locals 4
    .parameter "motionApps"

    .prologue
    .line 140
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionRecoTutorial motionApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionRecoTutorial repeat motionApps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v0

    .line 147
    .local v0, motionTypeReco:I
    if-ne v0, p1, :cond_1

    .line 148
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionRecoTutorial motionApps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionRecognition(I)V

    .line 152
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startMotionService()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.motionservice"

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionService()V

    .line 117
    :cond_0
    return-void
.end method

.method public stopMotionAppsReco(I)Z
    .locals 4
    .parameter "motionApps"

    .prologue
    .line 249
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionAppsReco motionApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v0

    .line 251
    .local v0, motionTypeReco:I
    if-eq v0, p1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionAppsReco not recognition motionApps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    .line 258
    :cond_0
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionAppsReco motionTypeReco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionRecognition(I)V

    .line 260
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopMotionRecoTutorial(I)V
    .locals 4
    .parameter "motionApps"

    .prologue
    .line 166
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecoTutorial motionApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v0

    .line 169
    .local v0, motionTypeReco:I
    if-eq v0, p1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "MotionDetectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecoTutorial not recognition motionApps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionRecognition(I)V

    .line 177
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopMotionService()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.motionservice"

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionService()V

    .line 128
    :cond_0
    return-void
.end method
