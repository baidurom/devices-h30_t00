.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;,
        Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;,
        Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field final mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mAppAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDh:I

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayed:Z

.field mDw:I

.field mForceHiding:I

.field mInitialized:Z

.field mInnerDh:I

.field mInnerDw:I

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mPendingActions:I

.field mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    .line 125
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 127
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 128
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 130
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 138
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 139
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 140
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 141
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 144
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayed:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    invoke-direct {v0}, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 160
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 167
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 180
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 181
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 182
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 184
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->copyLayoutToAnimParamsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 20

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v15, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->clear()V

    .line 700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 701
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    iget v15, v15, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mBulkUpdateParams:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_2

    .line 705
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 708
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 709
    .local v13, wasAnimating:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 710
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v15, :cond_3

    .line 711
    const-string v15, "WindowAnimator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "!!! animate: entry time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_3
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v15, :cond_4

    const-string v15, "WindowAnimator"

    const-string v16, ">>> OPEN TRANSACTION animateLocked"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 717
    invoke-static {}, Landroid/view/Surface;->setAnimationTransaction()V

    .line 719
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    .line 721
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayed:Z

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 723
    .local v11, numDisplays:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_b

    .line 724
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 725
    .local v7, displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 727
    .local v6, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 729
    .local v12, screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 730
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 731
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 747
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 749
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 750
    .local v14, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    invoke-virtual {v14}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v3

    .line 752
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v3, :cond_9

    .line 753
    invoke-virtual {v14, v10}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 752
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 733
    .end local v3           #N:I
    .end local v10           #j:I
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 734
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 735
    const/4 v15, 0x0

    iput-object v15, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v15}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowManagerService;->haltActivityResuming(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 789
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v9           #i:I
    .end local v11           #numDisplays:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v8

    .line 790
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v15, "WindowAnimator"

    const-string v16, "Unhandled exception in Window Manager"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 793
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v15, :cond_7

    const-string v15, "WindowAnimator"

    const-string v16, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .restart local v9       #i:I
    :goto_5
    if-ltz v9, :cond_13

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v15, v9}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->valueAt(I)I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_8

    .line 800
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 797
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 756
    .restart local v3       #N:I
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7       #displayId:I
    .restart local v10       #j:I
    .restart local v11       #numDisplays:I
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v14       #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayed:Z

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenTimeout:Z

    if-nez v15, :cond_a

    .line 757
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v15, v15, -0x9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 758
    const-string v15, "WindowAnimator"

    const-string v16, "No window is displayed, unset the SET_ORIENTATION_CHANGE_COMPLETE flag"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 763
    .end local v3           #N:I
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v10           #j:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 765
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_10

    .line 766
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 767
    .restart local v7       #displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 769
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 771
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_c

    .line 772
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 775
    :cond_c
    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 776
    .local v5, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    iget-object v4, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 777
    .local v4, dimAnimator:Lcom/android/server/wm/DimAnimator;
    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 780
    :cond_d
    if-eqz v4, :cond_e

    iget-boolean v15, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v15, :cond_e

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->isDimmingLocked(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v15

    if-nez v15, :cond_f

    const/4 v15, 0x1

    :goto_7
    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v15}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v15

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 765
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 781
    :cond_f
    const/4 v15, 0x0

    goto :goto_7

    .line 786
    .end local v4           #dimAnimator:Lcom/android/server/wm/DimAnimator;
    .end local v5           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v15, :cond_11

    .line 787
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v15}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 792
    :cond_11
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 793
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v15, :cond_7

    const-string v15, "WindowAnimator"

    const-string v16, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 792
    .end local v9           #i:I
    .end local v11           #numDisplays:I
    :catchall_0
    move-exception v15

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 793
    sget-boolean v16, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v16, :cond_12

    const-string v16, "WindowAnimator"

    const-string v17, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    throw v15

    .line 804
    .restart local v9       #i:I
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->size()I

    move-result v15

    if-lez v15, :cond_15

    .line 805
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAnimToLayoutLocked()V

    .line 808
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v15, :cond_17

    .line 809
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 810
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 811
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 815
    :cond_16
    :goto_8
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v15, :cond_0

    .line 816
    const-string v15, "WindowAnimator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "!!! animate: exit mAnimating="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mBulkUpdateParams="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :catchall_1
    move-exception v15

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v15

    .line 812
    :cond_17
    if-eqz v13, :cond_16

    .line 813
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto :goto_8
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .parameter "bulkUpdateParams"

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 848
    .local v0, builder:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 849
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 852
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 855
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 858
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 861
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyLayoutToAnimParamsLocked()V
    .locals 17

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    .line 245
    .local v8, layoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;
    monitor-enter v8

    .line 246
    const/4 v13, 0x0

    :try_start_0
    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAnimationScheduled:Z

    .line 248
    iget-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    if-nez v13, :cond_0

    .line 249
    monitor-exit v8

    .line 316
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    .line 253
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 254
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, -0x2

    and-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    .line 255
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 258
    :cond_1
    sget-boolean v13, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v13, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v13, v14, :cond_3

    .line 262
    :cond_2
    const-string v13, "WindowAnimator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pulling anim wallpaper: target="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lower="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " upper="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v13, :cond_6

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 271
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 272
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 276
    .local v10, numDisplays:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v10, :cond_b

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 278
    .local v5, displayId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 280
    .local v4, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13}, Lcom/android/server/wm/WinAnimatorList;->clear()V

    .line 281
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWinAnimatorLists:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WinAnimatorList;

    .line 282
    .local v12, winAnimators:Lcom/android/server/wm/WinAnimatorList;
    if-eqz v12, :cond_4

    .line 283
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/WinAnimatorList;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_4
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mDimParams:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimAnimator$Parameters;

    .line 287
    .local v3, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-nez v3, :cond_8

    .line 288
    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 276
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 268
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v7           #i:I
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v13, :cond_7

    const/4 v13, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_1

    .line 290
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_8
    iget-object v9, v3, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 293
    .local v9, newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v13, :cond_a

    const/4 v6, 0x0

    .line 298
    .local v6, existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_4
    iget-boolean v13, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_5

    if-eqz v6, :cond_9

    iget-boolean v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_9

    iget v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v14, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v13, v14, :cond_5

    .line 301
    :cond_9
    new-instance v13, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v13, v3}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/DimAnimator$Parameters;)V

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    goto :goto_3

    .line 315
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v6           #existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v7           #i:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :catchall_0
    move-exception v13

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 293
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v9       #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_a
    :try_start_1
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v6, v13, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_4

    .line 306
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, N:I
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_c

    .line 309
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;

    .line 310
    .local v11, params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 311
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 315
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v11           #params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    :cond_c
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 1014
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1015
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    .line 1017
    .restart local v0       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1019
    :cond_0
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 690
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 8

    .prologue
    .line 651
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 652
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 653
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 654
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 655
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 656
    .local v1, allDrawn:Z
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_1

    .line 657
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 658
    if-eqz v1, :cond_1

    .line 661
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_2

    .line 662
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 663
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 664
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_0

    const-string v5, "WindowAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " numInteresting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " numDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    const/4 v5, 0x4

    const-string v6, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 652
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    :cond_2
    const/16 v5, 0x8

    const-string v6, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 678
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 679
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 685
    .end local v1           #allDrawn:Z
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 364
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 365
    .local v0, NAT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 366
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 367
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_1

    move v4, v6

    .line 369
    .local v4, wasAnimating:Z
    :goto_1
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 365
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #wasAnimating:Z
    :cond_1
    move v4, v7

    .line 367
    goto :goto_1

    .line 371
    .restart local v4       #wasAnimating:Z
    :cond_2
    if-eqz v4, :cond_0

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 375
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_0

    const-string v5, "WindowAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWindowsApps...: done animating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 380
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 381
    .local v1, NEAT:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    .line 382
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 383
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_5

    move v4, v6

    .line 385
    .restart local v4       #wasAnimating:Z
    :goto_4
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 386
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 381
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #wasAnimating:Z
    :cond_5
    move v4, v7

    .line 383
    goto :goto_4

    .line 387
    .restart local v4       #wasAnimating:Z
    :cond_6
    if-eqz v4, :cond_4

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exiting appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 391
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v5, :cond_4

    const-string v5, "WindowAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 395
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 22
    .parameter "displayId"

    .prologue
    .line 549
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v10

    .line 551
    .local v10, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v15, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 552
    .local v15, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/16 v16, 0x0

    .line 553
    .local v16, windowAnimationBackground:Lcom/android/server/wm/WindowStateAnimator;
    const/16 v17, 0x0

    .line 554
    .local v17, windowAnimationBackgroundColor:I
    const/4 v9, 0x0

    .line 555
    .local v9, detachedWallpaper:Lcom/android/server/wm/WindowState;
    iget-object v0, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v18, v0

    .line 558
    .local v18, windowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;
    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_8

    .line 559
    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 560
    .local v14, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 558
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 564
    :cond_1
    iget v11, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 565
    .local v11, flags:I
    iget-object v13, v14, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 570
    .local v13, win:Lcom/android/server/wm/WindowState;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 571
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 572
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_2

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 574
    move-object v9, v13

    .line 576
    :cond_2
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 577
    .local v8, backgroundColor:I
    if-eqz v8, :cond_4

    .line 578
    if-eqz v16, :cond_3

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 580
    :cond_3
    move-object/from16 v16, v14

    .line 581
    move/from16 v17, v8

    .line 585
    .end local v8           #backgroundColor:I
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 591
    :cond_5
    iget-object v7, v14, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 592
    .local v7, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 594
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 596
    move-object v9, v13

    .line 599
    :cond_6
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 600
    .restart local v8       #backgroundColor:I
    if-eqz v8, :cond_0

    .line 601
    if-eqz v16, :cond_7

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 603
    :cond_7
    move-object/from16 v16, v14

    .line 604
    move/from16 v17, v8

    goto/16 :goto_1

    .line 610
    .end local v7           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v8           #backgroundColor:I
    .end local v11           #flags:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v9, :cond_a

    .line 611
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v19, :cond_9

    const-string v19, "WindowAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Detached wallpaper changed from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_9
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 618
    :cond_a
    if-eqz v17, :cond_f

    .line 622
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 623
    .local v6, animLayer:I
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 624
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v13, :cond_c

    .line 626
    :cond_b
    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v5

    .line 627
    .local v5, N:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_c

    .line 628
    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 629
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 630
    iget v6, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 636
    .end local v5           #N:I
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_c
    if-eqz v18, :cond_d

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    move/from16 v20, v0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 646
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    :cond_d
    :goto_3
    return-void

    .line 627
    .restart local v5       #N:I
    .restart local v6       #animLayer:I
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 642
    .end local v5           #N:I
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_f
    if-eqz v18, :cond_d

    .line 643
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_3
.end method

.method private updateWindowsLocked(I)V
    .locals 21
    .parameter "displayId"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 400
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    move-object/from16 v16, v0

    .line 402
    .local v16, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/4 v11, 0x0

    .line 403
    .local v11, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/4 v12, 0x0

    .line 404
    .local v12, wallpaperInUnForceHiding:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 406
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_18

    .line 407
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    .line 408
    .local v15, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v15, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 409
    .local v14, win:Lcom/android/server/wm/WindowState;
    iget v7, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 411
    .local v7, flags:I
    iget-object v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 412
    iget-boolean v13, v15, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 413
    .local v13, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v10

    .line 415
    .local v10, nowAnimating:Z
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v17, :cond_0

    .line 416
    const-string v17, "WindowAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": wasAnimating="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", nowAnimating="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    if-eqz v13, :cond_1

    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v14, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 422
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 424
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v17, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 431
    if-nez v13, :cond_5

    if-eqz v10, :cond_5

    .line 432
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v17, :cond_2

    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v17, :cond_3

    .line 433
    :cond_2
    const-string v17, "WindowAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Animation started that could impact force hide: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 436
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 438
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v17, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 442
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 444
    :cond_5
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 445
    if-eqz v10, :cond_d

    .line 446
    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 447
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 455
    :cond_6
    :goto_1
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v17, :cond_7

    const-string v17, "WindowAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Force hide "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hasSurface="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " policyVis="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " destroying="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " attHidden="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vis="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hidden="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " anim="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    :cond_7
    :goto_2
    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 510
    .local v5, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 511
    if-eqz v5, :cond_8

    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 512
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->put(II)V

    .line 515
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v17, :cond_9

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 522
    :cond_9
    iget-object v4, v15, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 523
    .local v4, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v4, :cond_b

    iget-object v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 524
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 526
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 528
    :cond_a
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 529
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 406
    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 449
    .end local v4           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #nowAnimating:Z
    .restart local v13       #wasAnimating:Z
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 452
    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 464
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 465
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x8

    and-int v17, v17, v18

    if-nez v17, :cond_12

    const/4 v8, 0x1

    .line 468
    .local v8, hideWhenLocked:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_10

    if-nez v8, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    if-eqz v8, :cond_13

    .line 471
    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    .line 472
    .local v6, changed:Z
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v17, :cond_11

    if-eqz v6, :cond_11

    const-string v17, "WindowAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Now policy hidden: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_11
    :goto_4
    if-eqz v6, :cond_7

    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_7

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 499
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 501
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v17, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 465
    .end local v6           #changed:Z
    .end local v8           #hideWhenLocked:Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 475
    .restart local v8       #hideWhenLocked:Z
    :cond_13
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v6

    .line 476
    .restart local v6       #changed:Z
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v17, :cond_14

    if-eqz v6, :cond_14

    const-string v17, "WindowAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Now policy shown: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_14
    if-eqz v6, :cond_11

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_16

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 481
    if-nez v11, :cond_15

    .line 482
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .restart local v11       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_15
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_16

    .line 486
    const/4 v12, 0x1

    .line 489
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    iget v0, v14, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    .line 493
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_4

    .line 536
    .end local v6           #changed:Z
    .end local v7           #flags:I
    .end local v8           #hideWhenLocked:Z
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    .end local v14           #win:Lcom/android/server/wm/WindowState;
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_18
    if-eqz v11, :cond_1a

    .line 537
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    :goto_5
    if-ltz v9, :cond_1a

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 539
    .local v3, a:Landroid/view/animation/Animation;
    if-eqz v3, :cond_19

    .line 540
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    .line 541
    .restart local v15       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v15, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 542
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 537
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_19
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 546
    .end local v3           #a:Landroid/view/animation/Animation;
    :cond_1a
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 205
    :cond_0
    return-void
.end method

.method clearPendingActions()V
    .locals 1

    .prologue
    .line 987
    monitor-enter p0

    .line 988
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 989
    monitor-exit p0

    .line 990
    return-void

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 11
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, subPrefix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, subSubPrefix:Ljava/lang/String;
    const/4 v4, 0x0

    .line 871
    .local v4, needSep:Z
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 872
    const/4 v4, 0x1

    .line 873
    const-string v9, "  App Animators:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 875
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowAnimator;

    .line 876
    .local v0, anim:Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "App Animator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 877
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 878
    if-eqz p3, :cond_0

    .line 879
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 880
    invoke-virtual {v0, p1, v5, p3}, Lcom/android/server/wm/AppWindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 874
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 886
    .end local v0           #anim:Lcom/android/server/wm/AppWindowAnimator;
    .end local v2           #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 887
    if-eqz v4, :cond_2

    .line 888
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 890
    :cond_2
    const/4 v4, 0x1

    .line 891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper tokens:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 893
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 894
    .local v7, token:Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 895
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 896
    if-eqz p3, :cond_3

    .line 897
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 898
    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 892
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 900
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 905
    .end local v2           #i:I
    .end local v7           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    if-eqz v4, :cond_5

    .line 906
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 908
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_10

    .line 909
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "DisplayContentsAnimator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 911
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 913
    .local v1, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 914
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowStateAnimator;

    .line 915
    .local v8, wanim:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Window #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 916
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 913
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 918
    .end local v8           #wanim:Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v9, :cond_8

    .line 919
    if-nez p3, :cond_7

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-boolean v9, v9, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-eqz v9, :cond_8

    .line 920
    :cond_7
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 924
    :cond_8
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v9, :cond_d

    .line 925
    if-nez p3, :cond_9

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v9, :cond_a

    .line 926
    :cond_9
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimAnimator:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 932
    :cond_a
    :goto_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v9, :cond_e

    .line 933
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimParams:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator$Parameters;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 938
    :cond_b
    :goto_7
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v9, :cond_f

    .line 939
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mScreenRotationAnimation:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 908
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 929
    :cond_d
    if-eqz p3, :cond_a

    .line 930
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimAnimator "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 935
    :cond_e
    if-eqz p3, :cond_b

    .line 936
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimParams "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 941
    :cond_f
    if-eqz p3, :cond_c

    .line 942
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no ScreenRotationAnimation "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 946
    .end local v1           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3           #j:I
    :cond_10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 948
    if-eqz p3, :cond_11

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mAnimTransactionSequence="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 951
    const-string v9, " mForceHiding="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mCurrentTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 956
    const-string v9, " mInnerDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 957
    const-string v9, " mInnerDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 959
    :cond_11
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v9, :cond_12

    .line 960
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    :cond_12
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    if-eqz v9, :cond_13

    .line 965
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mPendingActions=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    :cond_13
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_14

    .line 969
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 972
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 973
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWpAppAnimator="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 974
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_16

    .line 975
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mLowerWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 977
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUpperWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 978
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 980
    :cond_16
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_17

    .line 981
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUniverseBackground="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 982
    const-string v9, " mAboveUniverseLayer="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 984
    :cond_17
    return-void
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .parameter "displayId"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "w"
    .parameter "wallpaperTarget"
    .parameter "lowerWallpaperTarget"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p4, wallpaperTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_5

    .line 339
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 340
    .local v2, numTokens:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_5

    .line 341
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 342
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 343
    .local v3, numWindows:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 344
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 345
    .local v5, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 346
    .local v6, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v7, :cond_2

    .line 347
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 348
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 349
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 343
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 353
    .end local v5           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v6           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v7, :cond_4

    const-string v7, "WindowAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hiding wallpaper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " target="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lower="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    const-string v10, "  "

    invoke-static {v9, v10}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 360
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #numTokens:I
    .end local v3           #numWindows:I
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_5
    return-void
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 3
    .parameter "w"
    .parameter "fromAnimator"

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method isDimmingLocked(I)Z
    .locals 1
    .parameter "displayId"

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .parameter "winAnimator"

    .prologue
    .line 841
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 843
    .local v0, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .parameter "displayId"

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 209
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_2

    .line 210
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/DimSurface;->kill()V

    .line 212
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 214
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 216
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 218
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/DimAnimator;->kill()V

    .line 220
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 225
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .parameter "appAnimator"
    .parameter "changes"
    .parameter "s"

    .prologue
    .line 998
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 999
    .local v1, displays:Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1000
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 1001
    .local v3, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 1002
    .local v0, displayId:I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 1003
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1004
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_0

    .line 1005
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1008
    :cond_0
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1011
    .end local v0           #displayId:I
    .end local v3           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 826
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .locals 0
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 830
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 831
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 832
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 833
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 834
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .parameter "displayId"
    .parameter "changes"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->get(I)I

    move-result v1

    or-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->put(II)V

    .line 994
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .parameter "displayId"
    .parameter "animation"

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1024
    return-void
.end method

.method updateAnimToLayoutLocked()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 230
    .local v0, animToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    monitor-enter v0

    .line 231
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iput v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mBulkUpdateParams:I

    .line 232
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->clone()Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 235
    iget-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    .line 237
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 239
    :cond_0
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
