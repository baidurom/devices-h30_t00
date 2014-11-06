.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;,
        Lcom/android/gallery3d/ui/MenuExecutor$PasteSameFileDialogClickLisntener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field public static final KEY_USE_CUSTOM_PROGRESS:Ljava/lang/String; = "key-customprogress"

.field private static final MSG_DO_DELETE:I = 0x14

.field private static final MSG_PASTE_COMPLETE_EVENT:I = 0x11

.field private static final MSG_PASTE_EVENT:I = 0x10

.field private static final MSG_PASTE_INIT_EVENT:I = 0xf

.field private static final MSG_SHARE_DONE:I = 0x1e

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_START:I = 0x3

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"


# instance fields
.field private isLocked:Z

.field final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

.field private mContinueToPaste:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private mFinishedJobCount:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeleteAnimationProceed:Z

.field private mIsWholeProcessValid:Z

.field private final mLock:Ljava/lang/Object;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

.field private mStrategyForPasteSameFile:I

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mTotalJobCount:I

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 3
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z

    .line 654
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mStrategyForPasteSameFile:I

    .line 655
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mContinueToPaste:Z

    .line 656
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 658
    iput v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    .line 659
    iput v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mFinishedJobCount:I

    .line 1034
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mLock:Ljava/lang/Object;

    .line 1035
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isLocked:Z

    .line 116
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 117
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 118
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/MenuExecutor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/ui/MenuExecutor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mStrategyForPasteSameFile:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/MenuExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->notifyAllWaitingLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ILandroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ILandroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteInitEventUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteCompleteEventUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;)Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->startPhotoViewDeleteAnimation(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)V

    return-void
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Z
    .locals 17
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"
    .parameter "data"

    .prologue
    .line 569
    const/4 v9, 0x1

    .line 570
    .local v9, result:Z
    const-string v12, "MenuExecutor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Execute cmd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 573
    .local v10, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 647
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 575
    :sswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 649
    :cond_0
    :goto_0
    const-string v12, "MenuExecutor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "It takes "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms to execute cmd for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return v9

    .line 578
    :sswitch_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 579
    .local v7, media:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 580
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->show(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 582
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->hide(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 587
    .end local v7           #media:Lcom/android/gallery3d/data/MediaSet;
    :sswitch_2
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 588
    .restart local v7       #media:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isPrivate()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 589
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->cancelPrivate(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 591
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->setAsPrivate(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 596
    .end local v7           #media:Lcom/android/gallery3d/data/MediaSet;
    :sswitch_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->show(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 599
    :sswitch_4
    const/16 v12, 0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 602
    :sswitch_5
    const/16 v12, -0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_0

    .line 605
    :sswitch_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    .line 606
    .local v8, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v4

    .line 607
    .local v4, cacheFlag:I
    const/4 v12, 0x2

    if-ne v4, v12, :cond_3

    .line 608
    const/4 v4, 0x1

    .line 612
    :goto_1
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto/16 :goto_0

    .line 610
    :cond_3
    const/4 v4, 0x2

    goto :goto_1

    .line 616
    .end local v4           #cacheFlag:I
    .end local v8           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 617
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v12, 0x2

    new-array v6, v12, [D

    .line 618
    .local v6, latlng:[D
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 619
    const/4 v12, 0x0

    aget-wide v12, v6, v12

    const/4 v14, 0x1

    aget-wide v14, v6, v14

    invoke-static {v12, v13, v14, v15}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v13, 0x0

    aget-wide v13, v6, v13

    const/4 v15, 0x1

    aget-wide v15, v6, v15

    invoke-static/range {v12 .. v16}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto/16 :goto_0

    .line 625
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #latlng:[D
    :sswitch_8
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    .line 626
    .restart local v8       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->importOperation()Z

    move-result v9

    .line 627
    goto/16 :goto_0

    .line 631
    .end local v8           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_9
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->paste(Lcom/android/gallery3d/data/Path;Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    goto/16 :goto_0

    .line 636
    :sswitch_a
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    .line 637
    .restart local v8       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaObject;->photoshareDownLoadOperation()Z

    move-result v9

    .line 638
    goto/16 :goto_0

    .line 642
    .end local v8           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    if-eqz v12, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    move-object/from16 v0, p4

    invoke-interface {v12, v0}, Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;->process(Lcom/android/gallery3d/data/Path;)V

    goto/16 :goto_0

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x7f100000 -> :sswitch_6
        0x7f10022d -> :sswitch_b
        0x7f10022f -> :sswitch_a
        0x7f100230 -> :sswitch_0
        0x7f100233 -> :sswitch_9
        0x7f100234 -> :sswitch_a
        0x7f10023e -> :sswitch_1
        0x7f100242 -> :sswitch_2
        0x7f100271 -> :sswitch_8
        0x7f100274 -> :sswitch_5
        0x7f100275 -> :sswitch_4
        0x7f100278 -> :sswitch_7
        0x7f100279 -> :sswitch_3
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 295
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 296
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 297
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 558
    packed-switch p0, :pswitch_data_0

    .line 563
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 560
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 562
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 290
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method private handlePasteCompleteEventUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 872
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->isActivityActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 873
    const-string v4, "MenuExecutor"

    const-string v5, "The activity is not shown when the paste complete event message come to UI thread"

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key-pastedfilecount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 878
    .local v0, filePastedCount:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key-pastestate"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 879
    .local v1, pasteState:I
    if-ne v1, v6, :cond_1

    const v3, 0x7f11000b

    .line 881
    .local v3, textSzId:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, szPasteEndHint:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 879
    .end local v2           #szPasteEndHint:Ljava/lang/String;
    .end local v3           #textSzId:I
    :cond_1
    const v3, 0x7f11000c

    goto :goto_1
.end method

.method private handlePasteEventNoSpaceUIThread(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    .line 888
    const-string v7, "key-volumeavailable"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 889
    .local v1, spaceAvailable:J
    const-string v7, "key-volumeneed"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 892
    .local v3, spaceNeeded:J
    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, szSpaceAvailable:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v6

    .line 895
    .local v6, szSpaceNeeded:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d03ec

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0d03ed

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d026b

    new-instance v9, Lcom/android/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 902
    .local v0, mNoSpaceHintDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 903
    return-void
.end method

.method private handlePasteEventSameFileNameUIThread(ILjava/lang/String;)V
    .locals 14
    .parameter "sameNameFileCount"
    .parameter "fileName"

    .prologue
    .line 907
    new-instance v6, Lcom/android/gallery3d/ui/MenuExecutor$PasteSameFileDialogClickLisntener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$PasteSameFileDialogClickLisntener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$1;)V

    .line 909
    .local v6, clickListener:Lcom/android/gallery3d/ui/MenuExecutor$PasteSameFileDialogClickLisntener;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b00c0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 910
    .local v2, paddingLeft:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b00c1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 911
    .local v4, paddingRight:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b00c2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 912
    .local v3, paddingTop:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b00c3

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 914
    .local v5, paddingButtom:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d03e7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d03e8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v7, 0x7f0d03e9

    invoke-virtual {v1, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v7, 0x7f0d03eb

    invoke-virtual {v1, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v7, 0x7f0d03ea

    invoke-virtual {v1, v7, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 921
    .local v0, mSameFileDialog:Landroid/app/AlertDialog;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 922
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCheckBox:Landroid/widget/CheckBox;

    .line 923
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11000a

    add-int/lit8 v10, p1, -0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, p1, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 929
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 930
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 931
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 934
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->setHorizontalFadeEdge(Landroid/widget/TextView;)V

    .line 936
    return-void

    .line 927
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0
.end method

.method private handlePasteEventUiThread(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->isActivityActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    const-string v0, "MenuExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The activity is not shown when the paste event message come to UI thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 848
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->notifyAllWaitingLock()V

    .line 868
    :goto_0
    return-void

    .line 852
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 854
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventSameFileNameUIThread(ILjava/lang/String;)V

    goto :goto_0

    .line 858
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventNoSpaceUIThread(Landroid/os/Bundle;)V

    goto :goto_0

    .line 862
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventUserCancelUIThread(Landroid/os/Bundle;)V

    goto :goto_0

    .line 852
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handlePasteEventUserCancelUIThread(Landroid/os/Bundle;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 974
    iget v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mFinishedJobCount:I

    mul-int/lit8 v9, v9, 0x64

    iget v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    div-int/2addr v9, v10

    int-to-long v6, v9

    .line 975
    .local v6, percent:J
    :goto_0
    const-string v9, "key-pastestate"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 976
    .local v5, pasteState:I
    if-ne v5, v11, :cond_1

    const v3, 0x7f0d03ee

    .line 978
    .local v3, iUserCancelTitleId:I
    :goto_1
    if-ne v5, v11, :cond_2

    const v2, 0x7f0d03f1

    .line 980
    .local v2, iPositiveButtonTextId:I
    :goto_2
    if-ne v5, v11, :cond_3

    const v1, 0x7f0d03f0

    .line 982
    .local v1, iNegtiveButtonTextId:I
    :goto_3
    if-ne v5, v11, :cond_4

    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0d03ef

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 986
    .local v8, szCancelMessage:Ljava/lang/String;
    :goto_4
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$1;)V

    .line 987
    .local v0, clickListener:Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 992
    .local v4, mUserCancelDialog:Landroid/app/AlertDialog;
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 993
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 994
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 995
    return-void

    .line 974
    .end local v0           #clickListener:Lcom/android/gallery3d/ui/MenuExecutor$PasteUserCancelDialogClickLisntener;
    .end local v1           #iNegtiveButtonTextId:I
    .end local v2           #iPositiveButtonTextId:I
    .end local v3           #iUserCancelTitleId:I
    .end local v4           #mUserCancelDialog:Landroid/app/AlertDialog;
    .end local v5           #pasteState:I
    .end local v6           #percent:J
    .end local v8           #szCancelMessage:Ljava/lang/String;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 976
    .restart local v5       #pasteState:I
    .restart local v6       #percent:J
    :cond_1
    const v3, 0x7f0d03f2

    goto :goto_1

    .line 978
    .restart local v3       #iUserCancelTitleId:I
    :cond_2
    const v2, 0x7f0d03f5

    goto :goto_2

    .line 980
    .restart local v2       #iPositiveButtonTextId:I
    :cond_3
    const v1, 0x7f0d03f4

    goto :goto_3

    .line 982
    .restart local v1       #iNegtiveButtonTextId:I
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0d03f3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private handlePasteInitEventUiThread(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->isActivityActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const-string v0, "MenuExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The activity is not shown when the paste init event message come to UI thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 833
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 835
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventNoSpaceUIThread(Landroid/os/Bundle;)V

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private isActivityActive()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isActivityActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAllWaitingLock()V
    .locals 2

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1042
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isLocked:Z

    .line 1043
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1044
    monitor-exit v1

    .line 1045
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 303
    return-void
.end method

.method private onPasteNoSpace(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 770
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 771
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 774
    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->sendMessageToUIThread(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 775
    return v3
.end method

.method private onPasteSameFileName(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 779
    iget v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mStrategyForPasteSameFile:I

    packed-switch v0, :pswitch_data_0

    .line 791
    const-string v0, "key-filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, fileName:Ljava/lang/String;
    const-string v0, "key-filenamecount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 793
    .local v3, sameNameFileCount:I
    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->sendMessageToUIThread(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->waitUntilNotify()V

    .line 799
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mContinueToPaste:Z

    .end local v3           #sameNameFileCount:I
    .end local v4           #fileName:Ljava/lang/String;
    :goto_1
    return v0

    .line 781
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    move v0, v6

    .line 784
    goto :goto_1

    .line 797
    .restart local v3       #sameNameFileCount:I
    .restart local v4       #fileName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPasteUserCancel(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "data"

    .prologue
    .line 804
    const/16 v1, 0x10

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->sendMessageToUIThread(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->waitUntilNotify()V

    .line 810
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mContinueToPaste:Z

    return v0

    .line 808
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_0
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    .locals 5
    .parameter "result"
    .parameter "listener"
    .parameter "operation"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 220
    sparse-switch p3, :sswitch_data_0

    .line 233
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    :goto_0
    return-void

    .line 222
    :sswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 223
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/DataManager;->onPasteComplete(Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 228
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10022d -> :sswitch_1
        0x7f100233 -> :sswitch_0
    .end sparse-switch
.end method

.method private onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ILandroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "listener"
    .parameter "operation"
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p4, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 206
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 209
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, p3, p0, p4}, Lcom/android/gallery3d/data/DataManager;->initPaste(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Ljava/util/ArrayList;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f100233
        :pswitch_0
    .end packed-switch
.end method

.method private resetPasteFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 761
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 762
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 763
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mStrategyForPasteSameFile:I

    .line 764
    iput v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    .line 765
    iput v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mFinishedJobCount:I

    .line 766
    return-void
.end method

.method private resetProgressDialogForPaste(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 744
    if-eqz p1, :cond_2

    const-string v2, "key-volumeneed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 745
    .local v0, totalSpace:J
    :goto_0
    const-wide/32 v2, 0x100000

    div-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    .line 746
    iget v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    if-ge v2, v4, :cond_0

    .line 747
    iput v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    .line 750
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_3

    .line 758
    :cond_1
    :goto_1
    return-void

    .line 744
    .end local v0           #totalSpace:J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 753
    .restart local v0       #totalSpace:J
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 754
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    const-string v3, "%1d %%"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 756
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->isActivityActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method private sendMessageToUIThread(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "extraData"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->isActivityActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    const/4 v1, 0x0

    .line 823
    :goto_0
    return v1

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 820
    .local v0, msg:Landroid/os/Message;
    if-eqz p5, :cond_1

    .line 821
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setContinueToPasteState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mContinueToPaste:Z

    .line 1038
    return-void
.end method

.method private static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 284
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    :cond_0
    return-void
.end method

.method private startPhotoViewDeleteAnimation(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;)V
    .locals 1
    .parameter "photoView"
    .parameter "listener"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/PhotoView;->startDeleteAnimation()V

    .line 375
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/PhotoView;->getDeleteAnimation()Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->setAnimationListener(Lcom/android/gallery3d/anim/Animation$AnimationListener;)V

    .line 377
    :cond_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 189
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 190
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 192
    :cond_1
    return-void
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 2
    .parameter "menu"
    .parameter "shareAsPanorama360"
    .parameter "disablePanorama360Options"

    .prologue
    const/4 v1, 0x0

    .line 276
    const v0, 0x7f100272

    invoke-static {p0, v0, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 277
    if-eqz p2, :cond_0

    .line 278
    const v0, 0x7f100274

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 279
    const v0, 0x7f100275

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 281
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 20
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 239
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    const/4 v5, 0x1

    .line 240
    .local v5, supportDelete:Z
    :goto_0
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    .line 241
    .local v12, supportRotate:Z
    :goto_1
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_2

    const/4 v4, 0x1

    .line 242
    .local v4, supportCrop:Z
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v17, 0x1

    .line 243
    .local v17, supportTrim:Z
    :goto_3
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 244
    .local v14, supportShare:Z
    :goto_4
    and-int/lit8 v18, p1, 0x20

    if-eqz v18, :cond_5

    const/4 v13, 0x1

    .line 245
    .local v13, supportSetAs:Z
    :goto_5
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_6

    const/16 v16, 0x1

    .line 246
    .local v16, supportShowOnMap:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v3, 0x1

    .line 247
    .local v3, supportCache:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v6, 0x1

    .line 248
    .local v6, supportEdit:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v9, 0x1

    .line 249
    .local v9, supportInfo:Z
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v8, 0x1

    .line 250
    .local v8, supportImport:Z
    :goto_a
    const/high16 v18, 0x200

    and-int v18, v18, p1

    if-eqz v18, :cond_b

    const/4 v7, 0x1

    .line 251
    .local v7, supportHide:Z
    :goto_b
    const/high16 v18, 0x800

    and-int v18, v18, p1

    if-eqz v18, :cond_c

    const/4 v11, 0x1

    .line 252
    .local v11, supportPrivate:Z
    :goto_c
    const/high16 v18, 0x400

    and-int v18, v18, p1

    if-eqz v18, :cond_d

    const/4 v15, 0x1

    .line 253
    .local v15, supportShow:Z
    :goto_d
    const/high16 v18, 0x2000

    and-int v18, v18, p1

    if-eqz v18, :cond_e

    const/4 v10, 0x1

    .line 255
    .local v10, supportPhotoshareDownload:Z
    :goto_e
    const v18, 0x7f100230

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 256
    const v18, 0x7f100274

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 257
    const v18, 0x7f100275

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 258
    const v18, 0x7f100276

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 259
    const v18, 0x7f10027b

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 261
    const v18, 0x7f100272

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 262
    const v18, 0x7f10022d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 263
    const v18, 0x7f100277

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 264
    const v18, 0x7f100278

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 265
    const v18, 0x7f100273

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 266
    const v18, 0x7f10027a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 267
    const v18, 0x7f100271

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 268
    const v18, 0x7f10023e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 269
    const v18, 0x7f100242

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 270
    const v18, 0x7f100279

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 271
    const v18, 0x7f10022f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 272
    return-void

    .line 239
    .end local v3           #supportCache:Z
    .end local v4           #supportCrop:Z
    .end local v5           #supportDelete:Z
    .end local v6           #supportEdit:Z
    .end local v7           #supportHide:Z
    .end local v8           #supportImport:Z
    .end local v9           #supportInfo:Z
    .end local v10           #supportPhotoshareDownload:Z
    .end local v11           #supportPrivate:Z
    .end local v12           #supportRotate:Z
    .end local v13           #supportSetAs:Z
    .end local v14           #supportShare:Z
    .end local v15           #supportShow:Z
    .end local v16           #supportShowOnMap:Z
    .end local v17           #supportTrim:Z
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 240
    .restart local v5       #supportDelete:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 241
    .restart local v12       #supportRotate:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 242
    .restart local v4       #supportCrop:Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 243
    .restart local v17       #supportTrim:Z
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 244
    .restart local v14       #supportShare:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 245
    .restart local v13       #supportSetAs:Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 246
    .restart local v16       #supportShowOnMap:Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 247
    .restart local v3       #supportCache:Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 248
    .restart local v6       #supportEdit:Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 249
    .restart local v9       #supportInfo:Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 250
    .restart local v8       #supportImport:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 251
    .restart local v7       #supportHide:Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 252
    .restart local v11       #supportPrivate:Z
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 253
    .restart local v15       #supportShow:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_e
.end method

.method private waitUntilNotify()V
    .locals 3

    .prologue
    .line 1048
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1049
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->isLocked:Z

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1057
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public dismissAlertDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 526
    :cond_0
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    .line 527
    iput-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    .line 529
    :cond_1
    return-void
.end method

.method public getDefaultProcessList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getProcessingList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAnimationValue()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z

    return v0
.end method

.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 8
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    const/4 v3, 0x1

    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 310
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 317
    :sswitch_1
    const-string v0, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    .line 319
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 325
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 331
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "mimeType"

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 333
    .local v6, activity:Landroid/app/Activity;
    const v0, 0x7f0d0479

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    .end local v6           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    :sswitch_4
    const v2, 0x7f0d0269

    .local v2, title:I
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 369
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 341
    .end local v2           #title:I
    :sswitch_5
    const v2, 0x7f0d0292

    .line 342
    .restart local v2       #title:I
    goto :goto_1

    .line 344
    .end local v2           #title:I
    :sswitch_6
    const v2, 0x7f0d0291

    .line 345
    .restart local v2       #title:I
    goto :goto_1

    .line 347
    .end local v2           #title:I
    :sswitch_7
    const v2, 0x7f0d0290

    .line 348
    .restart local v2       #title:I
    goto :goto_1

    .line 350
    .end local v2           #title:I
    :sswitch_8
    const v2, 0x7f0d02e2

    .line 351
    .restart local v2       #title:I
    goto :goto_1

    .line 353
    .end local v2           #title:I
    :sswitch_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0399

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 354
    const v2, 0x7f0d027a

    .line 355
    .restart local v2       #title:I
    goto :goto_1

    .line 357
    .end local v2           #title:I
    :sswitch_a
    const v2, 0x7f0d027d

    .line 358
    .restart local v2       #title:I
    goto :goto_1

    .line 360
    .end local v2           #title:I
    :sswitch_b
    const v2, 0x7f0d027b

    .line 361
    .restart local v2       #title:I
    goto :goto_1

    .line 364
    .end local v2           #title:I
    :sswitch_c
    const v2, 0x7f0d03f7

    .line 365
    .restart local v2       #title:I
    goto :goto_1

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x7f100001 -> :sswitch_0
        0x7f10022f -> :sswitch_c
        0x7f100230 -> :sswitch_4
        0x7f100234 -> :sswitch_c
        0x7f10023e -> :sswitch_9
        0x7f100242 -> :sswitch_a
        0x7f100271 -> :sswitch_8
        0x7f100273 -> :sswitch_2
        0x7f100274 -> :sswitch_6
        0x7f100275 -> :sswitch_5
        0x7f100276 -> :sswitch_1
        0x7f100277 -> :sswitch_3
        0x7f100278 -> :sswitch_7
        0x7f100279 -> :sswitch_b
    .end sparse-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 6
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"
    .parameter "photoView"

    .prologue
    const v5, 0x7f0d0269

    .line 449
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 450
    .local v0, action:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 451
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, " "

    .line 452
    .local v2, title:Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 488
    :goto_0
    if-eqz p2, :cond_1

    .line 489
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 491
    :cond_0
    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v3, p0, v0, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    .line 492
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d026c

    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    .line 501
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/gallery3d/util/GalleryUtils;->setTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 506
    :goto_1
    return-void

    .line 454
    :sswitch_0
    const v3, 0x7f0d0479

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    goto :goto_0

    .line 457
    :sswitch_1
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    goto :goto_0

    .line 460
    :sswitch_2
    const v3, 0x7f0d0292

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 461
    goto :goto_0

    .line 463
    :sswitch_3
    const v3, 0x7f0d0291

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 464
    goto :goto_0

    .line 466
    :sswitch_4
    const v3, 0x7f0d0290

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    goto :goto_0

    .line 469
    :sswitch_5
    const v3, 0x7f0d02e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 470
    goto :goto_0

    .line 472
    :sswitch_6
    const v3, 0x7f0d027a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 473
    goto :goto_0

    .line 475
    :sswitch_7
    const v3, 0x7f0d027d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    goto/16 :goto_0

    .line 478
    :sswitch_8
    const v3, 0x7f0d027b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    goto/16 :goto_0

    .line 482
    :sswitch_9
    const v3, 0x7f0d03f7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 483
    goto/16 :goto_0

    .line 504
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_1

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10022f -> :sswitch_9
        0x7f100230 -> :sswitch_1
        0x7f100234 -> :sswitch_9
        0x7f10023e -> :sswitch_6
        0x7f100242 -> :sswitch_7
        0x7f100271 -> :sswitch_5
        0x7f100274 -> :sswitch_3
        0x7f100275 -> :sswitch_2
        0x7f100277 -> :sswitch_0
        0x7f100278 -> :sswitch_4
        0x7f100279 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPasteCompleteEvent(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "event"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->resetPasteFlag()V

    .line 738
    const/16 v1, 0x11

    const/4 v4, 0x0

    move-object v0, p0

    move v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->sendMessageToUIThread(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 739
    const/4 v0, 0x1

    return v0
.end method

.method public onPasteEvent(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter "event"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 687
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->API_VERSION_MIN_17:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 689
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z

    .line 730
    :goto_0
    return v2

    .line 693
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 694
    packed-switch p1, :pswitch_data_0

    .line 727
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    .line 730
    :goto_1
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mContinueToPaste:Z

    goto :goto_0

    .line 696
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_1

    .line 700
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onPasteNoSpace(Landroid/os/Bundle;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_1

    .line 704
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onPasteSameFileName(Landroid/os/Bundle;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_1

    .line 709
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_1

    .line 713
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onPasteUserCancel(Landroid/os/Bundle;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setContinueToPasteState(Z)V

    goto :goto_1

    .line 717
    :pswitch_6
    const-string v2, "key-volumecoped"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 718
    .local v0, index:J
    const-wide/32 v2, 0x100000

    div-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mFinishedJobCount:I

    .line 721
    iget v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    if-nez v2, :cond_2

    iput v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    .line 722
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mFinishedJobCount:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTotalJobCount:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->updateProgress(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_1

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPasteInitEvent(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->API_VERSION_MIN_17:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 665
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 668
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->resetPasteFlag()V

    .line 670
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->resetProgressDialogForPaste(Landroid/os/Bundle;)V

    .line 671
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onPasteNoSpace(Landroid/os/Bundle;)Z

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 196
    return-void
.end method

.method public setDeleteAnimationValue(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mIsDeleteAnimationProceed:Z

    .line 515
    return-void
.end method

.method public setShareProcessor(Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    .line 112
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 537
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 538
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 9
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 542
    sget-object v6, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->NORMAL_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getDefaultProcessList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZLcom/android/gallery3d/ui/MenuExecutorFactory$Style;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 543
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZLcom/android/gallery3d/ui/MenuExecutorFactory$Style;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"
    .parameter "style"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            "ZZ",
            "Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    .local p7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p2

    move-object v3, p0

    move-object v4, p6

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutorFactory;->create(Lcom/android/gallery3d/app/AbstractGalleryActivity;IILcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;Landroid/os/Bundle;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 549
    if-eqz p5, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 552
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    move-object v1, p0

    move v2, p1

    move-object v3, p7

    move-object v4, p3

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/os/Bundle;)V

    .line 553
    .local v0, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 554
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 555
    return-void
.end method

.method public updateProgress(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method
